with Ada.Text_IO;

package body Points is
   procedure Display_Point (P : in Point) is
   begin
      Ada.Text_IO.Put_Line
        ("Point { X = " & Integer'Image (P.X) & ", Y = " &
         Integer'Image (P.Y) & " }");
   end Display_Point;

   procedure Display_Point_Array (Arr : in Point_Array) is
   begin
      for Index in Arr'Range loop
         Ada.Text_IO.Put
           ("Point { X = " & Integer'Image (Arr (Index).X) & ", Y = " &
            Integer'Image (Arr (Index).Y) & " } ");
      end loop;
      Ada.Text_IO.New_Line;
   end Display_Point_Array;
end Points;
