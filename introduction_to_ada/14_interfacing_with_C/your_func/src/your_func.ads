with Interfaces.C; use Interfaces.C;

package Your_Func is
   Call_Counter : int with
      Export        => True,
      Convention    => C,
      External_Name => "call_counter";

   function Func (N : int) return int with
      Export        => True,
      Convention    => C,
      External_Name => "func";
end Your_Func;
