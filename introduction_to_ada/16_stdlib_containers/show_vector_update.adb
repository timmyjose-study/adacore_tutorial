with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Update is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   function Img (I : in Integer) return String renames Integer'Image;

   use Integer_Vectors;
   V : Integer_Vectors.Vector := 20 & 0 & 13 & 1 & 2;

   procedure Add_One (I : in out Integer) is
   begin
      I := I + 1;
   end Add_One;
begin
   for C in V.Iterate loop
      Ada.Text_IO.Put (Img (V (C)) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   -- update the vector by applying the procedure to each element
   for C in V.Iterate loop
      V.Update_Element (C, Add_One'Access);
   end loop;

   for C in V.Iterate loop
      Ada.Text_IO.Put (Img (V (C)) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Show_Vector_Update;
