package Points is
   type Point is record
      X, Y : Integer := 0;
   end record;

   type Point_Array is array (Positive range <>) of Point;

   Origin             : Point       := (X | Y => 0);
   Another_Origin     : Point       := (X => 0, Y => 0);
   Yet_Another_Origin : Point       := (X => 0, others => 0);
   Final_Point        : Point       := (others => <>);
   Points_1           : Point_Array := ((1, 2), (3, 4));
   Points_2           : Point_Array := (1 => (1, 2), 2 => (3, 4));

   procedure Display_Point (P : in Point);
   procedure Display_Point_Array (Arr: in Point_Array);
end Points;
