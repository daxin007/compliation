(* Syntaxe abstraite "goto" *)
(* Cette syntaxe abstraite possède les mêmes expressions que la syntaxe
   abstraite non typée, mais abandonne les structures de contrôle. *)
module Symb_Tbl = UntypedAst.Symb_Tbl

type expression      = UntypedAst.expression
type location        = UntypedAst.location
type identifier_info = UntypedAst.identifier_info
type literal         = UntypedAst.literal
type binop           = UntypedAst.binop
type call            = UntypedAst.call
    
type label = string
    
type block = instruction list
and instruction =
  | Set      of location * expression (* Affectation       *)
  | Print    of expression            (* Affichage         *)
  | Label    of label                 (* Point de saut     *)
  | Goto     of label                 (* Saut              *)
  | CondGoto of expression * label    (* Saut conditionnel *)
  | Comment  of string                (* Commentaire       *)
  | ProcCall of call                  (* Appel             *)
  | Throw 
  | NewHandler of label             
  | RmHandler   
      
type program = (string * function_info) list
and function_info = {
  locals:  identifier_info Symb_Tbl.t;
  formals: int;
  code:    block;
}
