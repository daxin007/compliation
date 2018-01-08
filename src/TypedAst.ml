module Symb_Tbl = SourceAst.Symb_Tbl

type identifier_kind = SourceAst.identifier_kind
type identifier_info = SourceAst.identifier_info
type binop           = SourceAst.binop
type literal     = SourceAst.literal
type typ     = SourceAst.typ

type ('a, 'e) annotated_element = {
  annot: 'a ;
  elt:   'e }
type typed_expression = (typ, expression)  annotated_element
and typed_location   = (typ, location)    annotated_element  
and typed_call       = (typ option, call) annotated_element
 
and expression  =
  | Literal  of literal                         (* Valeur immédiate    *)
  | Location of typed_location                        (* Valeur en mémoire   *)
  | Binop    of binop * typed_expression * typed_expression (* Opération binaire   *)
  | FunCall  of typed_call                            (* Appel de fonction   *)
  | NewArray of typed_expression * typ                     (* Création de tableau *)
  | NewRecord of string

and location =
  | Identifier  of string (* Variable en mémoire *)
  | ArrayAccess of access (* Case d'un tableau   *) 
  | FieldAccess of f_access  
and access = typed_expression * typed_expression
and f_access = typed_expression * string 

and call = string * typed_expression list
    
type block = instruction list
and instruction =
  | Set   of typed_location   * typed_expression    (* Affectation *)
  | While of typed_expression * block         (* Boucle      *)
  | If    of typed_expression * block * block (* Branchement *)
  | Print of typed_expression                 (* Affichage   *)
  | ProcCall of typed_call                          (* Appel       *)
  | Throw 
  | Try of block * block

type program ={
functions:  (string * function_info) list;
structs:    (string * struct_info) list  
}
and struct_info = (string * typ) list
and function_info = {
  (* Les mentions du type de retour et des types des paramètres seront
     utiles pour la vérification des types *)
  return:  typ option;
  formals: (string * typ) list;
  locals:  identifier_info Symb_Tbl.t;
  code:    block;
}



