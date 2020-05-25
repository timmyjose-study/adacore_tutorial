package body Your_func is
   function Func (N : int) return int is
   begin
      --Interfaces.C."=" (call_counter, Interfaces.C."+" (call_counter, 1));
      -- call_counter = call_counter + 1;
      call_counter := call_counter + 1;
      return N * 2;
   end Func;
end Your_func;
