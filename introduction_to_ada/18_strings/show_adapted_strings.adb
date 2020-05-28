with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure Show_Adapted_Strings is
   S : String          := "Hello World";
   P : constant String := "World";
   N : constant String := "Beautiful";

   procedure Display_Adapted_String
     (Source : String; Before : Positive; New_Item : String; Pattern : String)
   is
      S_Ins_In : String := Source;
      S_Ovr_In : String := Source;
      S_Del_In : String := Source;

      -- function version
      S_Ins : String :=
        Ada.Strings.Fixed.Insert (Source, Before, New_Item & " ");
      S_Ovr : String := Ada.Strings.Fixed.Overwrite (Source, Before, New_Item);
      S_Del : String :=
        Ada.Strings.Fixed.Trim
          (Ada.Strings.Fixed.Delete
             (Source, Before, Before + Pattern'Length - 1),
           Ada.Strings.Right);
   begin
      -- procedure versions
      Ada.Strings.Fixed.Insert (S_Ins_In, Before, New_Item, Ada.Strings.Right);
      Ada.Strings.Fixed.Overwrite
        (S_Ovr_In, Before, New_Item, Ada.Strings.Right);
      Ada.Strings.Fixed.Delete (S_Del_In, Before, Before + Pattern'Length - 1);

      Ada.Text_IO.Put_Line ("Original string : " & "'" & Source & "'");

      Ada.Text_IO.Put_Line ("Insert : " & "'" & S_Ins & "'");
      Ada.Text_IO.Put_Line ("Overwrite : " & "'" & S_Ovr & "'");
      Ada.Text_IO.Put_Line ("Delete : " & "'" & S_Del & "'");

      Ada.Text_IO.Put_Line ("Insert (in-place) : " & "'" & S_Ins_In & "'");
      Ada.Text_IO.Put_Line ("Overwrite (in-place) : " & "'" & S_Ovr_In & "'");
      Ada.Text_IO.Put_Line ("Delete (in-place) : " & "'" & S_Del_In & "'");
   end Display_Adapted_String;

   Idx : Natural;
begin
   Idx := Ada.Strings.Fixed.Index (Source => S, Pattern => P);

   if Idx > 0 then
      Display_Adapted_String (S, Idx, N, P);
   end if;
end Show_Adapted_Strings;
