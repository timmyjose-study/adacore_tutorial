with Ada.Text_IO;

with Set;

procedure Show_Generic_Instantiation is
   Param     : Integer := 0;
   Extra_Val : Integer;

   procedure Set_Extra_Val is new Set (T => Integer, X => Extra_Val);
begin
   Param := 100;
   Set_Extra_Val (Param);
   Ada.Text_IO.Put_Line
     ("Param = " & Integer'Image (Param) & ", and Extra_Val = " &
      Integer'Image (Extra_Val));
end Show_Generic_Instantiation;
