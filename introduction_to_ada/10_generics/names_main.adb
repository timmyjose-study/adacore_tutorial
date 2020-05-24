with Ada.Text_IO;

with Names; use Names;

procedure Names_Main is
   Blokes : Name_Array :=
     (Wiktor, Slava, Wiktor, Dave, Vincenzo, Slava, Gustaf, Armin, Vincenzo,
      Marcel);

   procedure Display_Array (Arr : in Name_Array) is
   begin
      for Idx in Arr'Range loop
         Ada.Text_IO.Put (Name'Image (Arr (Idx)) & " ");
      end loop;
      Ada.Text_IO.New_Line;
   end Display_Array;
begin
   Display_Array (Blokes);
   Names.Reverse_Name_Array (Blokes);
   Display_Array (Blokes);
end Names_Main;
