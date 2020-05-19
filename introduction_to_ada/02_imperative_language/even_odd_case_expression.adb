with Ada.Text_IO;

procedure Even_Odd_Case_Expression is
begin
   for Num in 1 .. 10 loop
      Ada.Text_IO.Put_Line
        (Integer'Image (Num) &
         (case Num is when 1 | 3 | 5 | 7 | 9 => " is odd",
            when 2 | 4 | 6 | 8 | 10 => " is odd"));
   end loop;
end Even_Odd_Case_Expression;
