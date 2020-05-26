with Ada.Text_IO;
with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;

procedure Show_Remove_Vector_Elements is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   use Integer_Vectors;

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (I : in Count_Type) return String renames Count_Type'Image;

   procedure Remove_All (V : in out Vector; E : in Integer) is
   begin
      Ada.Text_IO.Put_Line ("Removing all occurrences of " & Img (E));

      declare
         C : Cursor;
      begin
         loop
            C := V.Find (E);
            exit when C = No_Element;
            V.Delete (C);
         end loop;
      end;
   end Remove_All;

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

   V   : Vector := 20 & 10 & 0 & 1 & 13 & 0 & 1 & 13 & 22;
   Idx : Extended_Index;
   C   : Cursor;
begin
   Show_Elements (V);
   Remove_All (V, 0);
   Show_Elements (V);
   Remove_All (V, 13);
   Show_Elements (V);
   Remove_All (V, 22);
   Show_Elements (V);
end Show_Remove_Vector_Elements;
