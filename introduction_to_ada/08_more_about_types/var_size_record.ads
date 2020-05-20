package Var_Size_Record is
   type Item_Array is array (Positive range <>) of Integer;

   -- Max_Len here is the "discriminant"
   type Growable_Stack (Max_Len : Natural) is record
      Items : Item_Array (1 .. Max_Len);
      Len   : Natural;
   end record;

   function Compute_Max_Len return Natural;
   procedure Display_Growable_Stack (G : in Growable_Stack);
   procedure Display_Growable_Stack_Full (G : in Growable_Stack);
end Var_Size_Record;
