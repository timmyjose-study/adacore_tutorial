with Ada.Text_IO;

-- normal/ordinary fixed-points types (range) are in powers of two, decimal fixed-point values (digits) are in powers of 10
procedure Normalized_Fixed_Point_Type is
   D : constant := 2.0**(-31);
   type TQ31 is delta D range -1.0 .. 1.0;
begin
   Ada.Text_IO.Put_Line
     ("TQ31 requires " & Integer'Image (TQ31'Size) & " bits");
   Ada.Text_IO.Put_Line
     ("Min value is " & TQ31'Image (TQ31'First) & ", delta is " &
      TQ31'Image (TQ31'Delta) & ", and maximum value is " &
      TQ31'Image (TQ31'Last));
end Normalized_Fixed_Point_Type;
