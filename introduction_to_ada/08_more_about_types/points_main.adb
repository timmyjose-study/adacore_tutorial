with Points; use Points;

procedure Points_Main is
begin
   Display_Point (Origin);
   Display_Point (Another_Origin);
   Display_Point (Yet_Another_Origin);
   Display_Point (Final_Point);

   for Index in Points_1'Range loop
      Display_Point (Points_1 (Index));
   end loop;

   Display_Point_Array (Points_1);
   Display_Point_Array (Points_2);
end Points_Main;
