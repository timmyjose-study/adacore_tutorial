with Ada.Text_IO;

with Variant_Records; use Variant_Records;

procedure Variant_Records_Main is
   E : Expr :=
     (Kind  => Bin_Op_Add, Left => new Expr'(Kind => Val_Int, Val => 2),
      Right =>
        new Expr'
          (Kind  => Bin_Op_Mul, Left => new Expr'(Kind => Val_Int, Val => 3),
           Right => new Expr'(Kind => Val_Int, Val => 4)));
begin
   Show (E);
   Ada.Text_IO.Put_Line (Integer'Image (Eval (E)));
end Variant_Records_Main;
