with Ada.Unchecked_Deallocation;

package Simple_List is
   type Node;

   type Node_Acc is access Node;

   type Node is record
      Data       : Natural;
      Prev, Next : Node_Acc;
   end record;

   procedure Add_To_Back (Head : in out Node_Acc; Elem : Natural);
   procedure Display_List (Head : in Node_Acc);
   procedure Delete_From_Back (Head : in out Node_Acc);

   procedure Deallocate is new Ada.Unchecked_Deallocation (Node, Node_Acc);

   List_Empty_Error : exception;
end Simple_List;
