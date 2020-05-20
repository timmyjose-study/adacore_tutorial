with Ada.Text_IO;

package body Variant_Records is
   procedure Show (E : in Expr) is
   begin
      case E.Kind is
         when Bin_Op_Add =>
            Ada.Text_IO.Put ("Add (");
         when Bin_Op_Sub =>
            Ada.Text_IO.Put ("Sub (");
         when Bin_Op_Mul =>
            Ada.Text_IO.Put ("Mul (");
         when Bin_Op_Div =>
            Ada.Text_IO.Put ("Div (");
         when Val_Int =>
            Ada.Text_IO.Put (Integer'Image (E.Val));
            return;
      end case;

      Show (E.Left.all);
      Ada.Text_IO.Put (", ");
      Show (E.Right.all);
      Ada.Text_IO.Put (") ");
   end Show;

   function Eval (E : in Expr) return Integer is
   begin
      case E.Kind is
         when Bin_Op_Add =>
            return Eval (E.Left.all) + Eval (E.Right.all);
         when Bin_Op_Sub =>
            return Eval (E.Left.all) - Eval (E.Right.all);
         when Bin_Op_Mul =>
            return Eval (E.Left.all) * Eval (E.Right.all);
         when Bin_Op_Div =>
            declare
               R_Eval : Integer := Eval (E.Right.all);
            begin
               if R_Eval = 0 then
                  return 0;
               else
                  return Eval (E.Left.all) / R_Eval;
               end if;
            end;
         when Val_Int =>
            return E.Val;
      end case;
   end Eval;
end Variant_Records;
