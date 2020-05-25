with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;

procedure Main is
   function Get_Value (x : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "my_func";

   N : int := 11;
begin
   Ada.Text_IO.Put_Line ("N = " & int'Image (Get_Value (N)));
end Main;
