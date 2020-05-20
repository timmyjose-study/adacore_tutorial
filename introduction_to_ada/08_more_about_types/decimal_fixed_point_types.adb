with Ada.Text_IO;

procedure Decimal_Fixed_Point_Types is
   type T3_D3 is delta 10.00**(-3) digits 3;
   type T6_D3 is delta 10.00**(-3) digits 6;
begin
   Ada.Text_IO.Put_Line
     ("For T3_D3, minimum value = " & T3_D3'Image (T3_D3'First) &
      ", delta = " & T3_D3'Image (T3_D3'Delta) & ", and maximum value = " &
      T3_D3'Image (T3_D3'Last));
   Ada.Text_IO.Put_Line
     ("For T6_D3, minimum value = " & T6_D3'Image (T6_D3'First) &
      ", delta = " & T6_D3'Image (T6_D3'Delta) & ", and maximum value = " &
      T6_D3'Image (T6_D3'Last));
end Decimal_Fixed_Point_Types;
