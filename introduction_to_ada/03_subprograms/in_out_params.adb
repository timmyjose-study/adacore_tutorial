with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure In_Out_Prams is
   procedure Swap (X, Y : in out Integer) is
      Temp : Integer;
   begin
      Temp := X;
      X    := Y;
      Y    := Temp;
   end Swap;

   X, Y : Integer;
begin
   Ada.Text_IO.Put ("Enter X: ");
   Ada.Integer_Text_IO.Get (X);

   Ada.Text_IO.Put ("Enter Y: ");
   Ada.Integer_Text_IO.Get (Y);

   Ada.Text_IO.Put_Line
     ("Before Swap, X = " & Integer'Image (X) & " and Y = " &
      Integer'Image (Y));
   Swap (X, Y);
   Ada.Text_IO.Put_Line
     ("After Swap, X = " & Integer'Image (X) & " and Y = " &
      Integer'Image (Y));
end In_Out_Prams;
