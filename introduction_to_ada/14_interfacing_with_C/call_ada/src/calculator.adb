package body Calculator is
   function Add (X, Y : Interfaces.C.int) return Interfaces.C.Int is (Interfaces.C."+" (X, Y));
   function Sub (X, Y : Interfaces.C.int) return Interfaces.C.int is (Interfaces.C."-" (X, Y));
   function Mul (X, Y : Interfaces.C.int) return Interfaces.C.int is (Interfaces.C."*" (X, Y));
   function Div (X, Y : Interfaces.C.int) return Interfaces.C.int is
   begin
      if Interfaces.C."=" (X, 0) then
         return 0;
      end if;

      return Interfaces.C."/" (X, Y);
   end Div;
end Calculator;
