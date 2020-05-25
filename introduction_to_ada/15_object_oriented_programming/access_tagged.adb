with Ada.Text_IO;

package body Access_Tagged is
   procedure Init (A : in out T) is
   begin
      A.E := 0;
   end Init;

   procedure Show (Dummy : in T) is
   begin
      Ada.Text_IO.Put_Line ("In T with A = " & Integer'Image (Dummy.E) & " and tag " & T'External_Tag);
   end Show;

   procedure Show (Dummy : in T_New) is
   begin
      Ada.Text_IO.Put_Line ("In T_New with A = " & Integer'Image (Dummy.E) & " and tag " & T_New'External_Tag);
   end Show;
end Access_Tagged;
