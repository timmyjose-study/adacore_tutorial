with Ada.Text_IO;
with Ada.Containers.Ordered_Sets;

procedure Show_Set_Element_Ops is
   package Integer_Sets is new Ada.Containers.Ordered_Sets
     (Element_Type => Integer);

   use type Integer_Sets.Cursor;

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (C : in Ada.Containers.Count_Type) return String renames
     Ada.Containers.Count_Type'Image;

   procedure Show_Elements (S : in Integer_Sets.Set) is
   begin
      Ada.Text_IO.Put_Line ("Set has " & Img (S.Length) & " elements");

      if not S.Is_Empty then
         for Elem of S loop
            Ada.Text_IO.Put (Img (Elem) & " ");
         end loop;
         Ada.Text_IO.New_Line;
      end if;
   end Show_Elements;

   S : Integer_Sets.Set;
begin
   for Num in 1 .. 10 loop
      S.Include (Num);
   end loop;

   Show_Elements (S);

   S.Delete (1);
   S.Exclude (2);
   Show_Elements (S);

   if S.Contains (3) then
      S.Delete (3);
   else
      Ada.Text_IO.Put_Line ("Could not find " & Img (Integer (3)));
   end if;

   Show_Elements (S);

   if S.Find (4) /= Integer_Sets.No_Element then
      S.Delete (4);
   else
      Ada.Text_IO.Put_Line ("Could not find " & Img (Integer (4)));
   end if;

   Show_Elements (S);
end Show_Set_Element_Ops;
