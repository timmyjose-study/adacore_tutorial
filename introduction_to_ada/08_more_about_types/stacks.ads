package Stacks is
   type Stack is private;

   procedure Push (S : in out Stack; New_Item : in Natural);
   function Pop (S : in out Stack) return Natural;

private

   subtype Stack_Index is Natural range 0 .. 10;
   type Content_Type is array (Stack_Index) of Natural;

   type Stack is record
      Top     : Stack_Index := 0;
      Content : Content_Type;
   end record;
end Stacks;
