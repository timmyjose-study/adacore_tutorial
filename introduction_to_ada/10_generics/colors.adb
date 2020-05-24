package body Colors is
   procedure Swap_Colors (X, Y : in out Color) is
      Temp_Color : Color := X;
   begin
      X := Y;
      Y := Temp_Color;
   end Swap_Colors;
end Colors;
