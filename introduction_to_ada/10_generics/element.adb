package body Element is
   procedure Set (E : T) is
   begin
      Value := E;
      Valid := True;
   end Set;

   procedure Reset is
   begin
      Valid := False;
   end Reset;

   function Get return T is
   begin
      if not Is_Valid then
         raise Invalid_Element;
      end if;

      return Value;
   end Get;

   -- expression-style function definition
   function Is_Valid return Boolean is (Valid);
end Element;
