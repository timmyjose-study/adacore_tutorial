with Ada.Text_IO;
with Ada.Integer_Text_IO;

package body Var_Size_Record is
   function Compute_Max_Len return Natural is
      Size : Integer := 0;
   begin
      Ada.Integer_Text_IO.Get (Size);
      return Natural (Size);
   end Compute_Max_Len;

   procedure Display_Growable_Stack (G : in Growable_Stack) is
   begin
      for Index in G.Items'Range loop
         exit when Index > G.Len; -- since Len can be much smaller than Max_Len

         Ada.Text_IO.Put (Integer'Image (G.Items (Index)) & " ");
      end loop;
      Ada.Text_IO.New_Line;
   end Display_Growable_Stack;

   procedure Display_Growable_Stack_Full (G: in Growable_Stack) is
   begin
     for Index in G.Items'Range loop
       Ada.Text_IO.Put (Integer'Image (G.Items (Index)) &  " ");
     end loop;
     Ada.Text_IO.New_Line;
   end Display_Growable_Stack_Full;
end Var_Size_Record;
