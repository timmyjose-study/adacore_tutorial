with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Ops is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   -- sorting for this specific type of vectors
   package Integer_Vectors_Sorting is new Integer_Vectors.Generic_Sorting;

   use Integer_Vectors;

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (I : in Ada.Containers.Count_Type) return String renames
     Ada.Containers.Count_Type'Image;

   procedure Show_Elements (V : in Vector) is
   begin
      Ada.Text_IO.Put_Line ("Vector has " & Img (V.Length) & " elements");

      for Elem of V loop
         Ada.Text_IO.Put (Img (Elem) & " ");
      end loop;
      Ada.Text_IO.New_Line;
   end Show_Elements;

   V1 : Vector := 10 & 12 & 18;
   V2 : Vector := 11 & 13 & 19;
   V3 : Vector := 15 & 19;
   V : Vector;
begin
   Ada.Text_IO.Put_Line ("V1 ... ");
   Show_Elements (V1);

   Ada.Text_IO.Put_Line ("V2 ...");
   Show_Elements (V2);

   Ada.Text_IO.Put_Line ("V3 ... ");
   Show_Elements (V3);

   Ada.Text_IO.Put_Line ("Concatenating V1, V2, and V3 into V...");
   V := V1 & V2 & V3;
   Show_Elements (V);

   Ada.Text_IO.Put_Line ("Sorting V...");
   Integer_Vectors_Sorting.Sort (V);
   Show_Elements (V);

   Ada.Text_IO.Put_Line ("Merging V2 into V1...");
   Integer_Vectors_Sorting.Merge (V1, V2);
   Show_Elements (V1);
   Show_Elements (V2);
end Show_Vector_Ops;
