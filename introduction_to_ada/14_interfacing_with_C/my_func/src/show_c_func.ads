with Interfaces.C; use Interfaces.C;

package Show_C_Func is
   -- Ada equivalent of the C function with declaration : int my_func (int);
   function my_func (a : int) return int with
      Import     => True,
      Convention => C;
end Show_C_Func;
