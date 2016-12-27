(* 9. multiple proc *)
(* output : 24 *)
let x = proc (f) proc (g) proc (h) (f+f+g+g+h+h) in
  (((x 3) 4) 5)
