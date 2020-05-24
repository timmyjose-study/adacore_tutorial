with Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

with Stacks;

procedure Stacks_Main is
   package Stack_10_Integer is new Stacks (Max => 10, T => Integer);

   S : Stack_10_Integer.Stack;

   package Random_Integer is new Ada.Numerics.Discrete_Random
     (Result_Subtype => Integer);
   Random_Integer_Ganereator : Random_Integer.Generator;

   function Generate_Random_Integer return Integer is
   begin
      Random_Integer.Reset (Gen => Random_Integer_Ganereator);
      return Random_Integer.Random (Gen => Random_Integer_Ganereator);
   end Generate_Random_Integer;
begin
   Ada.Text_IO.Put_Line
     ("Is the stack empty ? " & Boolean'Image (Stack_10_Integer.Is_Empty (S)));

   for Iter in 1 .. 10 loop
      Stack_10_Integer.Push (S, Generate_Random_Integer);
   end loop;

   Ada.Text_IO.Put_Line
     ("Is the stack full ? " & Boolean'Image (Stack_10_Integer.Is_Full (S)));

   while not Stack_10_Integer.Is_Empty (S) loop
      Ada.Text_IO.Put_Line
        ("Popping : " & Integer'Image (Stack_10_Integer.Pop (S)));
   end loop;

   Ada.Text_IO.Put_Line
     ("Is the stack empty? " & Boolean'Image (Stack_10_Integer.Is_Empty (S)));
end Stacks_Main;
