package Newtypes is
   type Point is record
      X, Y : Integer;
   end record;

   -- new types can be created from any existing type
   type Point_Type is new Point;
end Newtypes;
