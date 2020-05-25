with Ada.Text_IO;

with Access_Tagged; use Access_Tagged;

procedure Access_Tagged_Main is
   T_Arr : array (1 .. 2) of T_Class;
begin
   T_Arr (1) := new T;
   T_Arr (2) := new T_New;

   for Idx in T_Arr'Range loop
      Ada.Text_IO.Put_Line ("Element # " & Integer'Image (Idx));
      T_Arr (Idx).Init;
      T_Arr (Idx).Show;
   end loop;
   Ada.Text_IO.New_Line;
end Access_Tagged_Main;
