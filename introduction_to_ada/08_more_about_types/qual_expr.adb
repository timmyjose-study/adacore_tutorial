procedure Qual_Expr is
  type Point is record
    X, Y: Integer := 0;
  end record;

  P : Point := Point' (12, 14);
  A : Integer := Integer' (12);
begin
  null;
end Qual_Expr;