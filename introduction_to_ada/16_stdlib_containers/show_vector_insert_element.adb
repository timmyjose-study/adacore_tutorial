with Ada.Text_IO;
with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;

procedure Show_Vector_Insert_Element is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   use Integer_Vectors;

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (I : in Count_Type) return String renames Count_Type'Image;

   procedure Show_Elements (V : in Integer_Vectors.Vector) is
   begin
      Ada.Text_IO.Put_Line ("Vector has " & Img (V.Length) & " elements");

      if not V.Is_Empty then
         for Elem of V loop
            Ada.Text_IO.Put (Img (Elem) & " ");
         end loop;
      end if;
      Ada.Text_IO.New_Line;
   end Show_Elements;

   V : Integer_Vectors.Vector := 20 & 10 & 0 & 13 & 1;
   C : Cursor;
begin
   Show_Elements (V);

   Ada.Text_IO.Put_Line ("Adding 9 before element with value 10");
   C := V.Find (10);

   if C /= No_Element then
      V.Insert (C, 9);
   else
      Ada.Text_IO.Put_Line ("Could not find element " & Img (Integer (10)));
   end if;

   Show_Elements (V);
end Show_Vector_Insert_Element;
