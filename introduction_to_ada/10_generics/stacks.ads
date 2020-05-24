generic
   Max : Positive;
   type T is private;
package Stacks is
   type Stack is limited private;

   procedure Push (S : in out Stack; E : in T);
   function Pop (S : in out Stack) return T;
   function Is_Empty (S : in Stack) return Boolean;
   function Is_Full (S : in Stack) return Boolean;

   Stack_Underflow, Stack_Overflow : exception;

private
   type Stack_Array is array (Positive range <>) of T;

   type Stack is record
      Top   : Natural := 0;
      Items : Stack_Array (1 .. Max);
   end record;

end Stacks;
