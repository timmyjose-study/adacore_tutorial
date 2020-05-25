with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;
with Show_C_Func;

procedure Main is
   N : int := 11;
begin
   N := Show_C_Func.my_func (N);
   Ada.Text_IO.Put_Line ("N = " & int'Image (N));

   Ada.Text_IO.Put_Line
     ("my_func was called " & int'Image (Show_C_Func.func_call_count) &
      " time(s)");

   for Iter in 1 .. 5 loop
      N := Show_C_Func.my_func (N);
   end loop;

   Ada.Text_IO.Put_Line ("New value of N is " & int'Image (N));
   Ada.Text_IO.Put_Line
     ("my_func has now been called " &
      int'Image (Show_C_Func.func_call_count) & " time(s)");
end Main;
