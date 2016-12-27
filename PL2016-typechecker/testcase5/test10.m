(* 10. letrec3 *)
(* output : int *)
let n = iszero 0 in    
letrec ssigma (n) = 
  if iszero n then 0
  else 
    letrec sigma(n) = if iszero n then 0 else ((sigma (n-1)) + n) in (sigma n) + (ssigma (n-1))
  in let n = 5 in (ssigma 5)
