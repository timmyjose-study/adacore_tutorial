with Ada.Text_IO;

procedure Show_Simple_Postconditions is
   type Int_8 is range -2**7 .. 2**7 - 1;

   type Int8_Array is array (Positive range <>) of Int_8;

   function Square (A : Int_8) return Int_8 is (A * A) with
      Post =>
      (if abs A in 0 | 1 then Square'Result = abs A else Square'Result > A);

   procedure Square (Arr : in out Int8_Array) with
      Post =>
      (for all Idx in Arr'Range => Arr (Idx) = Arr'Old (Idx) * Arr'Old (Idx))
   is
   begin
      for Elem of Arr loop
         Elem := Square (Elem);
      end loop;
   end Square;

   Arr : Int8_Array := (-2, -1, 0, 1, 10, 11);
begin
   Ada.Text_IO.Put_Line ("Original array ...");
   for Elem of Arr loop
      Ada.Text_IO.Put (Int_8'Image (Elem) & " ");
   end loop;
   Ada.Text_IO.New_Line (2);

   Square (Arr);
   Ada.Text_IO.Put_Line ("Squared array ...");
   for Elem of Arr loop
      Ada.Text_IO.Put (Int_8'Image (Elem) & " ");
   end loop;
   Ada.Text_IO.New_Line (2);
end Show_Simple_Postconditions;
