with Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Find_Element is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   use Integer_Vectors;
   function Img (I : in Integer) return String renames Integer'Image;

   V   : Integer_Vectors.Vector := 20 & 10 & 0 & 1 & 13;
   Idx : Integer_Vectors.Extended_Index;
   C   : Integer_Vectors.Cursor;
begin
   -- using Find_Index
   Idx := V.Find_Index (10);

   if Idx = Integer_Vectors.No_Index then
      Ada.Text_IO.Put_Line ("Could not find element " & Img (10));
   else
      Ada.Text_IO.Put_Line
        (Img (V (Idx)) & " with index " &
         Integer_Vectors.Extended_Index'Image (Idx));
   end if;

   -- using cursor
   C := V.Find (13);

   if C = Integer_Vectors.No_Element then
      Ada.Text_IO.Put_Line ("Could not find element " & Img (13));
   else
      Ada.Text_IO.Put_Line
        (Img (V (C)) & " with index " &
         Integer_Vectors.Extended_Index'Image (Integer_Vectors.To_Index (C)));
   end if;

   C := V.Find (100);
   if C = Integer_Vectors.No_Element then
      Ada.Text_IO.Put_Line ("Could not find element " & Img (100));
   else
      Ada.Text_IO.Put_Line
        (Img (V (C)) & " with index " &
         Integer_Vectors.Extended_Index'Image (Integer_Vectors.To_Index (C)));
   end if;
end Show_Vector_Find_Element;
