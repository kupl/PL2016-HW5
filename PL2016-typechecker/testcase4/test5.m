(* 5. simple let binding *)
(* output : 16 *)
let x = 5 in 
  let y = 3 in
    let x = x + y in
      x + x
