with Ada.Text_IO;

package body Simple_Sync_Pkg is
   task body T is
   begin
      for Iter in 1 .. 100 loop
         Ada.Text_IO.Put_Line ("Hello from Task!");
      end loop;
   end T;
end Simple_Sync_Pkg;
