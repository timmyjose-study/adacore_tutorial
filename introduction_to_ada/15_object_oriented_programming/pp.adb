package body PP is
  procedure Init (A : in out T3) is
  begin
    A.E := 0;
  end Init;

  function Get (Val : in T3) return Integer is (Val.E);
end PP;
