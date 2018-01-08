module S = SourceAst  
module T = TypedAst

(* Rapports d'erreurs *)
exception Type_error of S.typ * S.typ

(* comparetype: typ -> typ -> unit
   Lève une exception si les types diffèrent. *)
let comparetype t1 t2 =
  if t1 <> t2
  then raise (Type_error(t1, t2))
  (* type_literal: literal -> typ *)
let type_literal = function
  | S.Int _  -> S.TypInteger
  | S.Bool _ -> S.TypBoolean
    
(* [type_binop] renvoie le type des opérandes et le type du résultat
   d'un opérateur binaire. *)
(* type_binop: binop -> typ * typ *)
let type_binop = function
  | S.Add | S.Sub | S.Mult     -> S.TypInteger, S.TypInteger
  | S.Eq  | S.Neq | S.Lt  | S.Le -> S.TypInteger, S.TypBoolean
  | S.And | S.Or             -> S.TypBoolean, S.TypBoolean

let type_fun p ps =  (* p est fonction,est ps est program *)
  let rec typecheck_block b symb_tbl= List.map (typecheck_instruction symb_tbl) b 
  and typecheck_instruction symb_tbl  = function
    | S.Set(l, e)     -> let a1,t1 = type_location l symb_tbl in
                         let a2,t2 = type_expression e symb_tbl in
						 comparetype t1 t2 ;
						 T.Set(a1,a2) 
    | S.While(e, b)   -> let a1,t1 = type_expression e symb_tbl in
	                   comparetype t1 S.TypBoolean ;
                       let a2 = typecheck_block b symb_tbl in
                       T.While(a1, a2)
    | S.If(e, b1, b2) -> let a1,t1 = type_expression e symb_tbl in
	                   comparetype t1 S.TypBoolean ;
                       let a2 = typecheck_block b1 symb_tbl in
					   let a3 = typecheck_block b2 symb_tbl in
                       T.If(a1,a2,a3)
    | S.Print(e)      -> let a1,t1 = type_expression e symb_tbl in
	                   T.Print(a1)
    | S.ProcCall(c)-> T.ProcCall(type_call c symb_tbl)
    | S.Throw      -> T.Throw
    | S.Try(b1, c)    ->
      
       T.Try(typecheck_block b1 symb_tbl,typecheck_block c symb_tbl ) 
    and type_literal i =
    match i with
    | S.Int (i)  -> 
      S.Int(i), SourceAst.TypInteger
    | S.Bool (b) -> 
    S.Bool(b), SourceAst.TypBoolean
  and type_expression e symb_tbl = match e with
    | S.Literal(l)        -> let nl, tl = type_literal l in
                            { T.annot = tl; T.elt = T.Literal(nl) }, tl 
    | S.Location(l)       -> let al, tl = type_location l symb_tbl in
                            { T.annot = tl; T.elt = T.Location(al) }, tl
    | S.Binop(op, e1, e2) -> let ty_op, ty_r = type_binop op in
                           let (e1,t1)=type_expression e1 symb_tbl in
                           let (e2,t2)=type_expression e2 symb_tbl in
    comparetype ty_op t1 ;
    comparetype ty_op t2 ;
    T.{ annot=ty_r; elt=T.Binop(op, e1, e2) },ty_r
 
 
 | S.FunCall(c) -> let fc, tf = type_fct c symb_tbl in
      { T.annot = tf; T.elt = T.FunCall(fc) }, tf 

  

    | S.NewArray(e, t)    -> let a1, t1 = type_expression e symb_tbl in
                            comparetype TypInteger t1;
                         { T.annot = TypArray t; T.elt = T.NewArray(a1, t) }, TypArray t
    | S.NewRecord (s)    ->  { T.annot = TypStruct s; T.elt = T.NewRecord(s) }, TypStruct s
  and type_fct c symb_tbl =
    let typed_call = type_call c symb_tbl in
    match typed_call.annot with
    | Some t -> typed_call, t
    | None -> failwith"no return"   
  and type_location  l symb_tbl = match l with
    | Identifier(id)  ->let t= (S.Symb_Tbl.find id symb_tbl).S.typ in
                          { T.annot=t; T.elt=T.Identifier(id) },t
    | ArrayAccess(aa) -> type_a_access aa symb_tbl 
   | FieldAccess(ff) -> 
       type_f_access ff symb_tbl 

  and type_call c symb_tbl =
        let s,l = c in
    (*let infos = S.Symb_Tbl.find s symb_tbl in *)
   let rec string_of_typ t = match t with

  | SourceAst.TypStruct s -> "struct_" ^ s

  | SourceAst.TypInteger -> "integer"

  | SourceAst.TypBoolean -> "boolean"

  | SourceAst.TypArray(t) -> Printf.sprintf "array_of_%s" (string_of_typ t) in
    let rename_fun id formals =
    List.fold_left (fun acc (_,t ) -> acc ^ "_" ^ (string_of_typ t)) id formals in
    let t1 = List.map (fun (id, f) -> (rename_fun id f.S.formals, f)) ps.S.functions in
    let tl= List.map(fun e ->  type_expression e symb_tbl) l in
    let ts= List.map snd tl in
     let s = List.fold_left (fun acc t  -> acc ^ "_" ^ (string_of_typ t)) s ts in 
        let rec findtyp l s=
        match l with
       |[] -> failwith "error"
       |(str,t)::rl -> if s = str then t else findtyp rl s in
            (* let infos= findtyp ps.S.functions s in *)
           let infos= findtyp t1 s in
	    let ls = List.fold_left2
                    (fun acc elt (_,a) ->
                          let a1, t1 = type_expression elt symb_tbl in
                          comparetype a t1;
                          acc @ [a1]) [] l infos.S.formals
            in
           
                       { T.annot = infos.S.return; T.elt =(s, ls) } 
                         
  and type_a_access (e1, e2) symb_tbl =  let a2, t2 = type_expression e2 symb_tbl in
                                comparetype TypInteger t2;
                                let a1, t1 = type_expression e1 symb_tbl in
                                let ta = match t1 with
                                    |TypArray t -> t
                                    | _ -> failwith "no array"
    in
    { T.annot = ta; T.elt = T.ArrayAccess(a1, a2) }, ta

  and type_f_access (e, s1) symb_tbl =
    let e1, t = type_expression e symb_tbl in
    let sn =
      match t with
      | TypStruct s -> s
      | _ -> failwith "no struct"
    in
    let rec findtyp l s=
      match l with
      |[] -> failwith "struct error"
      |(str,t)::rl -> if s = str then t else findtyp rl s in
    let t1= findtyp ps.S.structs sn in
    let t = findtyp t1 s1 in 
{ T.annot =t; T.elt = T.FieldAccess(e1, s1)}, t 

in
  
   
  (* type_identifier_info: S.identifier_info -> T.identifier_info *)

  (*let code = typecheck_block p.S.code p.S.locals in *) 
(*let locals =
    S.Symb_Tbl.fold
      (fun id info tbl ->
	T.Symb_Tbl.add id  info tbl)
      p.S.locals
      T.Symb_Tbl.empty
  in
  let code = typecheck_block p.S.code locals in *) 
  { T.return = p.S.return; T.formals =p.S.formals; T.locals = p.S.locals ;T.code = typecheck_block p.S.code p.S.locals } 
  
  let type_prog p = 
 { T.functions = List.map (fun (id, f) -> (id, type_fun f p)) p.S.functions;
   
   T.structs = p.S.structs } 
 

