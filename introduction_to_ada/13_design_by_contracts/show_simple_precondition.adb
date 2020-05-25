-- always include the flag -gnataa in addition to including this pragma, for increased safety

pragma Assertion_Policy (Check);

procedure Show_Simple_Precondition is
   procedure DB_Entry (Name : String; Age : Natural) with
      Pre => Name'Length > 0
   is
   begin
      null;
   end DB_Entry;
begin
   DB_Entry ("Bob", 21);
   DB_Entry ("", 19); -- this will fail the precondition
end Show_Simple_Precondition;
