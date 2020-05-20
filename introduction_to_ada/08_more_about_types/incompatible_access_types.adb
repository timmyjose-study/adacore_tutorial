with Ada.Text_IO;

procedure Incompatible_Access_Types is
   type Int_Access_1 is access Integer;
   type Int_Access_2 is access all Integer;

   V1 : Int_Access_1 := new Integer'(100);
   V2 : Int_Access_1 := null;

   V3 : Int_Access_2 := new Integer'(200);
   V4 : Int_Access_2 := null;
begin
   Ada.Text_IO.Put_Line ("V1 = " & Integer'Image (V1.all));

   -- this works since the types match
   V2 := V1;
   Ada.Text_IO.Put_Line ("V2 = " & Integer'Image (V2.all));

   -- this will not compile
   --V4 := V2;

   -- as expected though, this works just fine
   V4 := V3;
   Ada.Text_IO.Put_Line
     ("V3 = " & Integer'Image (V3.all) & ", V4 = " & Integer'Image (V4.all));

   -- however, type conversion still works, but only after making Int_Access_2 a general access type 
   V4 := Int_Access_2 (V2);
   Ada.Text_IO.Put_Line ("V4 is now " & Integer'Image (V4.all));
end Incompatible_Access_Types;
