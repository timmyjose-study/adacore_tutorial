with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Init is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   type Integer_Vector_Access is access all Integer_Vectors.Vector;

   procedure Display_Vector (V : in Integer_Vector_Access) is
   begin
      Ada.Text_IO.Put_Line
        ("The vector has " & Ada.Containers.Count_Type'Image (V.Length) &
         "  elements in it");
      for Elem of V.all loop
         Ada.Text_IO.Put (Integer'Image (Elem) & " ");
      end loop;
      Ada.Text_IO.New_Line;
   end Display_Vector;

   use Integer_Vectors;

   -- initialisation syntax
   V1 : aliased Integer_Vectors.Vector := 1 & 2 & 3 & 4 & 5;
begin
   Display_Vector (V1'Access);
end Show_Vector_Init;
