--- limited types in Ada are types for which the assignment and comparison (including equality, of course) are not automatically provided

package Limited_Stacks is
   type Stack is limited private;

   procedure Push (S : in out Stack; New_Item : in Natural);
   function Pop (S : in out Stack) return Natural;

private

   subtype Stack_Index is Natural range 0 .. 10;
   type Content_Type is array (Stack_Index) of Natural;

   type Stack is record
      Top     : Stack_Index := 0;
      Content : Content_Type;
   end record;
end Limited_Stacks;
