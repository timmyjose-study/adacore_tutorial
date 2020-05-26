with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_First_Last_Element is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   function Img (I : Integer) return String renames Integer'Image;
   function Img (I : Ada.Containers.Count_Type) return String renames
     Ada.Containers.Count_Type'Image;

   use Integer_Vectors;

   V : Vector := 20 & 10 & 0 & 13;
begin
   Ada.Text_IO.Put_Line ("The vector has " & Img (V.Length) & " elements");
   Ada.Text_IO.Put_Line ("The first element is " & Img (V.First_Element));
   Ada.Text_IO.Put_Line ("The last elements is " & Img (V.Last_Element));

   -- swap the first and last elements
   Integer_Vectors.Swap (V, V.First, V.Last);
   Ada.Text_IO.Put_Line
     ("The first element is now " & Img (V.First_Element) &
      " and the last element is " & Img (V.Last_Element));
end Show_Vector_First_Last_Element;
