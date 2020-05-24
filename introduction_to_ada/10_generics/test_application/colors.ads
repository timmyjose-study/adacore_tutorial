with Generic_Reverse_Array;

package Colors is
   type Color is (Blue, Orange, Green, Black, Yellow, Purple, White);

   type Color_Array is array (Positive range <>) of Color;

   procedure Reverse_Color_Array is new Generic_Reverse_Array (T => Color,
      Index => Positive, Array_T => Color_Array);
end Colors;
