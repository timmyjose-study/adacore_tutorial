with Ada.Text_IO;
with Ada.Unchecked_Deallocation;

package body Simple_List is
   Head : Node_Acc := null;

   procedure Add_To_Back (Head : in out Node_Acc; Elem : Natural) is
   begin
      if Head = null then
         Head := new Node'(Data => Elem, Prev => null, Next => null);
         return;
      end if;

      declare
         Temp_Node : Node_Acc := Head;
         New_Node  : Node_Acc :=
           new Node'(Data => Elem, Prev => null, Next => null);
      begin
         while Temp_Node.all.Next /= null loop
            Temp_Node := Temp_Node.all.Next;
         end loop;

         Temp_Node.all.Next := New_Node;
         New_Node.all.Prev  := Temp_Node;
      end;
   end Add_To_Back;

   procedure Display_List (Head : in Node_Acc) is
   begin
      declare
         Temp_Node : Node_Acc := Head;
      begin
         while Temp_Node /= null loop
            Ada.Text_IO.Put (Natural'Image (Temp_Node.all.Data) & " ");
            Temp_Node := Temp_Node.all.Next;
         end loop;
         Ada.Text_IO.New_Line;
      end;
   end Display_List;

   procedure Delete_From_Back (Head : in out Node_Acc) is
   begin
      if Head = null then
         raise List_Empty_Error;
      elsif Head.all.Next = null then
         Deallocate (Head);
      else
         declare
            Temp_Node : Node_Acc := Head;
         begin
            if Temp_Node = null then
               raise List_Empty_Error;
            end if;

            while Temp_Node.all.Next /= null loop
               Temp_Node := Temp_Node.all.Next;
            end loop;

            Temp_Node.all.Prev.Next := null;
            Deallocate (Temp_Node);
         end;
      end if;
   end Delete_From_Back;
end Simple_List;
