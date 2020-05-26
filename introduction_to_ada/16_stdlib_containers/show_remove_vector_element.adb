with Ada.Text_IO;
with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;

procedure Show_Remove_Vector_Element is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   use Integer_Vectors;

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (I : in Count_Type) return String renames Count_Type'Image;

   procedure Show_Elements (V : in Vector) is
   begin
      Ada.Text_IO.Put_Line
        ("Vector has " & Img (Count_Type (V.Length)) & " elements");

      if not V.Is_Empty then
         for Elem of V loop
            Ada.Text_IO.Put (Img (Elem) & " ");
         end loop;
         Ada.Text_IO.New_Line;
      end if;
   end Show_Elements;

   V   : Vector := 20 & 10 & 0 & 1 & 13;
   Idx : Extended_Index;
   C   : Cursor;
begin
   Show_Elements (V);

   Idx := V.Find_Index (0);

   if Idx /= No_Index then
      V.Delete (Idx);
   else
      Ada.Text_IO.Put_Line ("Could not find element " & Img (V (Idx)));
   end if;

   Show_Elements (V);

   C := V.Find (13);
   if C /= No_Element then
      V.Delete (C);
   else
      Ada.Text_IO.Put_Line ("Could not find element " & Img (V (C)));
   end if;

   Show_Elements (V);
end Show_Remove_Vector_Element;
