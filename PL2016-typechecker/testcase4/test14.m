(* 14. memory effect2 *)
(* output : 35 *)
let x = 10 in
let y = 20 in
  begin
    let f = proc (y) (set x = 15) in 
      begin
        (set y = 5; 
         let x = 30 in
           ((f 3);x+y))
      end
  end
