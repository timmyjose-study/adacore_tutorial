with Interfaces.C; use Interfaces.C;

-- the following declaration is equivalent to the following C struct:
--
-- struct c_struct {
--   int a;
--   long b;
--   unsigned c;
--   double d;
-- };

procedure Show_C_Struct is
   type c_struct is record
      a : int;
      b : long;
      c : unsigned;
      d : double;
   end record with
      Convention => c;
begin
   null;
end Show_C_Struct;
