(* 7. proc3 *)
(* produces type error : from proc5.m *)
(* can be run on interpreter in hw4 *)
proc (maker)
  proc (x)
    if iszero (x) then 0 
    else (((maker maker) (x-1)) + 4) 
