with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Index_Iteration is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   use Integer_Vectors;
   V : Integer_Vectors.Vector := 20 & 10 & 0 & 13 & 24;

   function Img (I : Integer) return String renames Integer'Image;
begin
   for Idx in V.First_Index .. V.Last_Index loop
      Ada.Text_IO.Put (Img (V (Idx)) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   for C in V.Iterate loop
     Ada.Text_IO.Put (Img (V (C)) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Show_Vector_Index_Iteration;
