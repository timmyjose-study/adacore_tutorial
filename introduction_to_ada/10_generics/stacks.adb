package body Stacks is
   procedure Push (S : in out Stack; E : in T) is
   begin
      if Is_Full (S) then
         raise Stack_Overflow;
      end if;

      S.Top           := S.Top + 1;
      S.Items (S.Top) := E;
   end Push;

   function Pop (S : in out Stack) return T is
      Val : T;
   begin
      if Is_Empty (S) then
         raise Stack_Underflow;
      end if;

      Val   := S.Items (S.Top);
      S.Top := S.Top - 1;

      return Val;
   end Pop;

   function Is_Empty (S : in Stack) return Boolean is
   begin
      return S.Top = 0;
   end Is_Empty;

   function Is_Full (S : in Stack) return Boolean is
   begin
      return S.Top = Max;
   end Is_Full;
end Stacks;
