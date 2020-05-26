with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Append is
   package Boolean_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Boolean);

   V : Boolean_Vectors.Vector;
begin
   Ada.Text_IO.Put_Line ("Appending some elements to the vector...");
   V.Append (True);
   Boolean_Vectors.Append (V, False);
   Boolean_Vectors.Append (V, New_Item => True);
   V.Append (New_Item => False);
   Ada.Text_IO.Put_Line ("Finished appending items to the vector");

   Ada.Text_IO.Put_Line ("Prepending some elements to the vector...");
   V.Prepend (False);
   V.Prepend (New_Item => True);
   Boolean_Vectors.Prepend (V, False);
   Boolean_Vectors.Prepend (V, New_Item => True);
   Ada.Text_IO.Put_Line ("Finished prepending elements to the vector");

   Ada.Text_IO.Put_Line
     ("Vector has " & Ada.Containers.Count_Type'Image (V.Length) &
      " elements, which are as follows... ");
   for Elem of V loop
      Ada.Text_IO.Put (Boolean'Image (Elem) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Show_Vector_Append;
