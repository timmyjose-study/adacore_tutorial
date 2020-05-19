with Ada.Text_IO;

procedure Function_Return_Value is
   function Double (I : in Integer) return Integer is
   begin
      return I * 2;
   end Double;

   Res : Integer;
begin
   -- the following line will cause an error since this is a function and the return value must be
   -- used in some way.
   --Double (Double (10));
   Res := Double (Double (10));
   Ada.Text_IO.Put_Line (Integer'Image (Res));
end Function_Return_Value;
