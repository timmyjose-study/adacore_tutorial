with Ada.Text_IO;

with Limited_Stacks;

procedure Limited_Stacks_Main is
   S : Limited_Stacks.Stack;
begin
   for Num in 1 .. 10 loop
      Limited_Stacks.Push (S, Num);
   end loop;

   for Iter in 1 .. 10 loop
      Ada.Text_IO.Put (Natural'Image (Limited_Stacks.Pop (S)));
   end loop;

   -- this does not work though since stacks is a limited type

  -- declare
  --    S1 : Limited_Stacks.Stack;
  -- begin
  --    S1 := S;
  -- end;
end Limited_Stacks_Main;
