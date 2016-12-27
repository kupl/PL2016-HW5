(* 7. begin end + set + let *)
(* output : 140 *)
begin
  begin
    begin
      let x = 10 in 
        (set x = x + 10; 
         let y = x + x in
           y+100)
    end
  end
end
