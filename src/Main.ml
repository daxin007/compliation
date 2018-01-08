open Format

let usage = "usage: ./main.native [options] file.a6m"

let reg_allocation = ref false

let spec =
  [  ]

let file =
  let file = ref None in
  let set_file s =
    if not (Filename.check_suffix s ".a6m") then
      raise (Arg.Bad "no .a6m extension");
    file := Some s
  in
  Arg.parse spec set_file usage;
  match !file with Some f -> f | None -> Arg.usage spec usage; exit 1


let print_position lexbuf =
  let pos = lexbuf.Lexing.lex_curr_p in
  Printf.printf " ligne %d, position %d\n"
    pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)

let parse lexbuf =
  let parse_with_error lexbuf =
    try SourceParser.program SourceLexer.token lexbuf with
    | SourceLexer.SyntaxError msg ->
       Printf.printf "%s at " msg;
      print_position lexbuf;
      exit (-1)
    | SourceParser.Error ->
       Printf.printf "Parsing error at ";
      print_position lexbuf;
      exit (-1)
  in
  parse_with_error lexbuf

let () =
  let c  = open_in file in
  let lb = Lexing.from_channel c in
  let p = parse lb in

  (* let p = SourceParser.program SourceLexer.token lb in *)
  close_in c;
  (*SourceTypeChecker.typecheck_program p;
  let p = SourcetoUntyped.erase_program p in*)
  (*ourcetoUntyped.erase_program p in *)
  let p = SourcetoTyped.type_prog p in
  let p = TypedtoUntyped.erase_prog p in 
  let p = UntypedtoGoto.destructure_program p in
  let p = GototoIr.flatten_program p in
  let p = IrtoAllocated.allocate_program !reg_allocation p in
  let asm = AllocatedtoMips.generate_program p in
  let output_file = (Filename.chop_suffix file ".a6m") ^ ".asm" in
  let out = open_out output_file in
  let outf = formatter_of_out_channel out in
  Mips.print_program outf asm;
  pp_print_flush outf ();
  close_out out;
  (* end; *)
  exit 0
