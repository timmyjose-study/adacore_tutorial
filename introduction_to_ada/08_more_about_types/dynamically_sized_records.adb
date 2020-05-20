with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Dynamically_Sized_Records is
   function Compute_Max_Len return Natural is
      Len : Natural := 0;
   begin
      Ada.Integer_Text_IO.Get (Len);
      return Len;
   end Compute_Max_Len;

   Max_Len : constant Natural := Compute_Max_Len;

   type Int_Array is array (Positive range <>) of Integer;

   type Growable_Stack is record
      Items : Int_Array (1 .. Max_Len);
      Len   : Natural;
   end record;

   procedure Init_Growable_Stack (G : in out Growable_Stack) is
   begin
      for Index in 1 .. Max_Len loop
         Ada.Integer_Text_IO.Get (G.Items (Index));
      end loop;
   end Init_Growable_Stack;

   procedure Display_Growable_Stack (G : in Growable_Stack) is
   begin
      for Index in G.Items'Range loop
         Ada.Text_IO.Put (Integer'Image (G.Items (Index)) & " ");
      end loop;
      Ada.Text_IO.New_Line;
   end Display_Growable_Stack;

   G : Growable_Stack;
   G1 : Growable_Stack; -- both will have the same size!
begin
   Init_Growable_Stack (G);
   Display_Growable_Stack (G);

   Init_Growable_Stack (G1);
   Display_Growable_Stack (G1);
end Dynamically_Sized_Records;
