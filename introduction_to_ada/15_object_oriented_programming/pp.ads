package PP is
   type T1 is tagged private;

   type T2 is tagged limited record
      E : Integer;
   end record;

   type T3 is tagged limited private;

   procedure Init (A : in out T3);
   function Get (Val : in T3) return Integer;

private

   type T1 is tagged record
      E : Integer;
   end record;

   type T3 is tagged limited record
      E : Integer;
   end record;
end PP;
