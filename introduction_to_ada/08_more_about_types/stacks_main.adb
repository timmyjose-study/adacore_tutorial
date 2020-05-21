with Ada.Text_IO;

with Stacks;

procedure Stacks_Main is
   S : Stacks.Stack;
begin
   for Num in 1 .. 10 loop
      Stacks.Push (S, Num);
   end loop;

   for Iter in 1 .. 10 loop
      Ada.Text_IO.Put (Natural'Image (Stacks.Pop (S)) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   -- this works since Stack is not a limited type
   declare
      S1 : Stacks.Stack := S;
   begin
      for Num in 11 .. 20 loop
         Stacks.Push (S1, New_Item => Num);
      end loop;

      for Iter in 1 .. 10 loop
         Ada.Text_IO.Put (Natural'Image (Stacks.Pop (S1)) & " ");
      end loop;
      Ada.Text_IO.New_Line;
   end;
end Stacks_Main;
