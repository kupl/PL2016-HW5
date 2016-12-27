(* 10. recursive twice *)
(* output : 35 *)
let x = 5 in    
letrec ssigma (n) = 
  if iszero n then 0
  else 
    letrec sigma(m) = if iszero m then 0 else ((sigma (m-1)) + m) in (sigma n) + (ssigma (n-1))
  in (ssigma x)
