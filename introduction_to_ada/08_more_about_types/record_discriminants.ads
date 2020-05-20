package Record_Discriminants is
   type Point (X, Y : Natural) is record
      null;
   end record;

   -- this will not compile since Point is indefinite, so either the discriminant must be supplied, or else the object initialised
   --P : Point;

   P1 : Point (1, 2);
   P2 : Point := (100, 200);
end Record_Discriminants;
