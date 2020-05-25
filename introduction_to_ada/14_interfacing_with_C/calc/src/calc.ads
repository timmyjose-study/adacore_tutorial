with Interfaces.C;

package Calc is
   function Add (X, Y : Interfaces.C.int) return Interfaces.C.int with
      Import        => True,
      Convention    => C,
      External_Name => "add";

   function Sub (X, Y : Interfaces.C.int) return Interfaces.C.int with
      Import        => True,
      Convention    => C,
      External_Name => "sub";

   function Mul (X, Y : Interfaces.C.int) return Interfaces.C.int with
      Import        => True,
      Convention    => C,
      External_Name => "mul";

   function Div (X, Y : Interfaces.C.int) return Interfaces.C.int with
      Import        => True,
      Convention    => C,
      External_Name => "div";
end Calc;
