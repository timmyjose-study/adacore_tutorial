with Colors; use Colors;
with Perform_Test;

procedure Main is
  procedure Perform_Test_Reverse_Color_Array is new Perform_Test (
    T => Color,
    Index => Positive,
    Array_T => Color_Array,
    S => "Color",
    Image => Color'Image,
    Test => Reverse_Color_Array
  );

  My_Colors : Color_Array (1 .. 5) := (Blue, Orange, Yellow, Black, Green);
begin
  Perform_Test_Reverse_Color_Array (My_Colors);
end Main;