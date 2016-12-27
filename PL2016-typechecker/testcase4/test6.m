(* 6. nested let + branch *)
(* output : 11 *)
let x = 5 in
  let y = x + 1 in
    if iszero 3 then true
    else 
      let x = 5 in
        if iszero (x-5) then x + y else x + y + y
