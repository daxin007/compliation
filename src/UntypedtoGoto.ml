(* Transformation de la syntaxe abstraite non typée
   vers la syntaxe abstraite "goto". *)
(* Rien de neuf ici *)

module S = UntypedAst
module T = GotoAst

let destructure_function id f =

  (* new_label: unit -> string *)
  (* Un appel [new_label()] crée une nouvelle étiquette qui peut être
     utilisée pour créer des sauts. *)
  let new_label =
    let cpt = ref 0 in
    fun () -> incr cpt; Printf.sprintf "_label_%s_%i" id !cpt
  in

  (* destructure_block: S.block -> T.block *)
  let rec destructure_block = function
    | []     -> []
    | i :: b -> destructure_instruction i @ (destructure_block b)
      
  (* destructure_instruction: S.instruction -> T.block *)
  and destructure_instruction : S.instruction -> T.block = function
    | Set(l, e)     -> [ T.Set(l, e)   ]
    | Print(e)      -> [ T.Print(e)    ]
    | ProcCall(c)   -> [ T.ProcCall(c) ]
      
    | While(e, b)   -> let body_label = new_label() in
		       let test_label = new_label() in
		       [ T.Comment("While")             ]
		       @ [ T.Goto test_label            ]
		       @ [ T.Label body_label           ]
		       @ [ T.Comment("Corps de boucle") ]
		       @ (destructure_block b)
		       @ [ T.Label test_label           ]
		       @ [ T.Comment("Test de boucle")  ]
		       @ [ T.CondGoto(e, body_label)    ]
		       @ [ T.Comment("Fin boucle")      ]
			 
    | If(e, b1, b2) -> let then_label = new_label() in
		       let end_label = new_label() in
		       [ T.Comment("If")             ]
		       @ [ T.CondGoto(e, then_label) ]
		       @ [ T.Comment("Bloc else")    ]
		       @ (destructure_block b2)
		       @ [ T.Goto end_label          ]
		       @ [ T.Label then_label        ]
		       @ [ T.Comment("Bloc then")    ]
		       @ (destructure_block b1)
		       @ [ T.Label end_label         ]
		       @ [ T.Comment("Fin if")       ]

    | Throw      -> [ T.Throw ]
   | Try(b1, c)    ->
       let catch_label = new_label() in
       let end_label = new_label() in
     
       [ T.Comment("Try") ]
       @ [ T.NewHandler(catch_label) ]
       @ (destructure_block b1)
       @ [ T.Goto end_label ]
       @ [ T.Comment("Catch") ]
       @ [ T.Label catch_label ]
       @ (destructure_block c)
       @ [ T.Label end_label ]
      @ [ T.RmHandler]
    (* | Try(b, c)    ->
     
        let l1 = List.map (fun (i, b) ->
	 let catch_label = new_label() in
        (Printf.sprintf "catch %s_%d" catch_label i, b)) c in
       let l2 = List.fold_left (fun acc (s, b) ->
         
         let end_label = new_label() in
	 let ins  =
	   [ T.Comment(s) ]  (* numero *)
       	   @ [ T.Label s ]
       	   @ (destructure_block b)
       	   @ [ T.Label end_label ]
       	   @ [ T.RmHandler]
	 in acc @ ins) [] l1
       in
        let try_label = new_label() in
        
        let end_label = new_label() in 
       [ T.Comment("Try") ]
       @ [ T.NewHandler(try_label) ]
       @ (destructure_block b)
       (*@ [ T.Goto end_label ] *)
       @ l2
       @ [ T.Label end_label ]
      @ [ T.Comment("Fin try") ]  *) 

  in

  { T.locals = f.S.locals; T.formals = f.S.formals; T.code = destructure_block f.S.code }

let destructure_program p =
  List.map (fun (id, info) -> (id, destructure_function id info)) p
