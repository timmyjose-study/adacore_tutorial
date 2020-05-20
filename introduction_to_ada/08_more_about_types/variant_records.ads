-- variant records in Ada are essentially equivalent to Sum Types in Functional languages. The only difference is that the tag
-- of the Sum type is explicit in Ada (in the form of a discriminant).

package Variant_Records is
   type Expr;
   type Expr_Access is access Expr;

   type Expr_Kind_Type is
     (Bin_Op_Add, Bin_Op_Sub, Bin_Op_Mul, Bin_Op_Div, Val_Int);

   -- a very elegant way of achieving sum types by overloading the concept of a record
   type Expr (Kind : Expr_Kind_Type) is record
      case Kind is
         when Bin_Op_Add | Bin_Op_Sub | Bin_Op_Mul | Bin_Op_Div =>
            Left, Right : Expr_Access;
         when Val_Int =>
            Val : Integer;
      end case;
   end record;

   procedure Show (E: in Expr);
   function Eval (E: in Expr) return Integer;
end Variant_Records;
