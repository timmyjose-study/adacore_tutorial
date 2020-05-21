package body Limited_Stacks is
   procedure Push (S : in out Stack; New_Item : Natural) is
   begin
      S.Top             := S.Top + 1;
      S.Content (S.Top) := New_Item;
   end Push;

   function Pop (S : in out Stack) return Natural is
   begin
      declare
         Val : Natural := S.Content (S.Top);
      begin
         S.Top := S.Top - 1;
         return Val;
      end;
   end Pop;
end Limited_Stacks;
