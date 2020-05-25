package Access_Tagged is
   type T is tagged record
      E : Integer;
   end record;

   procedure Init (A : in out T);
   procedure Show (Dummy : in T);

   type T_Class is access T'Class;

   type T_New is new T with null record;

   overriding procedure Show (Dummy : T_New);
end Access_Tagged;
