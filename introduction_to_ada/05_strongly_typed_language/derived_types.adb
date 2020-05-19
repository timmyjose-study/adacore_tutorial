with Ada.Text_IO;

procedure Derived_Types is
   type SSN is new Integer range 0 .. 999_99_9999;

   My_SSN  : SSN := 123_45_6789;
   Int_Val : Integer;
begin
   --My_SSN  := Int_Val;
   --Int_Val := My_SSN;

   Int_Val := Integer (My_SSN);
   Ada.Text_IO.Put_Line ("Int_Val = " & Integer'Image (Int_Val));
   Ada.Text_IO.Put_Line ("My_SSN  = " & SSN'Image (My_SSN));
end Derived_Types;
