(* Transformation de la syntaxe abstraite typée
   en syntaxe abstraite non typée. *)

(* À ce stade, la plupart de ces fonctions traduisent le programme
   sans rien modifier. *)

module S = TypedAst  (* Source de la transformation *)
module T = UntypedAst (* Cible de la transformation  *)

let erase_function f p =
  let rec erase_block b = List.map erase_instruction b
  and erase_instruction : S.instruction -> T.instruction = function
    | Set(l, e)     -> T.Set(erase_location l, erase_expression e)
    | While(e, b)   -> T.While(erase_expression e, erase_block b)
    | If(e, b1, b2) -> T.If(erase_expression e, erase_block b1, erase_block b2)
    | Print(e)      -> T.Print(erase_expression e)
    | ProcCall(c)   -> T.ProcCall(erase_call c)
    | Throw      -> T.Throw
    | Try(b1, c)    ->
      
       T.Try(erase_block b1, erase_block c)
      
  and erase_expression typed_expression =
    match typed_expression.S.elt with
    | Literal(l)        -> T.Literal(l)
    | Location(l)       -> T.Location(erase_location l)
    | Binop(op, e1, e2) -> T.Binop(op, erase_expression e1, erase_expression e2)
    | FunCall(c)        -> T.FunCall(erase_call c)
    | NewArray(e, _)    -> T.NewArray(erase_expression e)
    | NewRecord(s)      ->     let rec findtyp l s=
                               match l with
                                    |[] -> failwith "struct error"
                                    |(str,t)::rl -> if s = str then t else findtyp rl s in
                           let st= findtyp p.S.structs s in
                           let l=List.length st in
                           T.NewArray(Literal(Int(l)))
  and erase_location typed_location = 
  match typed_location.S.elt with
    | Identifier(id)  -> T.Identifier(id)
    | ArrayAccess(aa) -> T.ArrayAccess(erase_a_access aa)
    | FieldAccess(te,s) -> 
      let st = te.S.annot in 
      let sn =
      match st with
      | TypStruct s -> s
      | _ -> failwith "no struct"
      in
      let rec findtyp l s=
      match l with
      |[] -> failwith "struct error"
      |(str,t)::rl -> if s = str then t else findtyp rl s in
    let t1= findtyp p.S.structs sn in
      let index,_ = List.fold_left
        (fun (acc,index) (str,_)->
          if s=str then (index, index+1) else (acc,index+1))
        (-1, 0) t1 in  
     T.ArrayAccess(erase_expression te, Literal(Int(index))) 
  and erase_a_access (e1, e2) = (erase_expression e1, erase_expression e2)

  and erase_call typed_call =
    let s, l = typed_call.S.elt in
    
    let l = List.map erase_expression l in
    (s, l)
 
  in

  (* erase_identifier_info: S.identifier_info -> T.identifier_info *)
  let erase_identifier_info i = i.SourceAst.kind in
  (*let erase_formal f =
    List.map (fun (_, str) -> str) f *)
  let locals =
    S.Symb_Tbl.fold
      (fun id info tbl ->
	  
	T.Symb_Tbl.add id (erase_identifier_info info) tbl)
      f.S.locals
      T.Symb_Tbl.empty
  in
  
  let code = erase_block f.S.code in
  
  { locals; T.formals = List.length f.formals; code }
  let rec string_of_typ t = match t with

  | SourceAst.TypStruct s -> "struct_" ^ s

  | SourceAst.TypInteger -> "integer"

  | SourceAst.TypBoolean -> "boolean"

  | SourceAst.TypArray(t) -> Printf.sprintf "array_of_%s" (string_of_typ t)
 let rename_fun id formals =
    List.fold_left (fun acc (_,t ) -> acc ^ "_" ^ (string_of_typ t)) id formals  

let erase_prog p =
  List.map (fun (id, f) -> (rename_fun id f.S.formals, erase_function f p)) p.functions
