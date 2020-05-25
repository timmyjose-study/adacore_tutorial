pragma Assertion_Policy (Check);

with Ada.Text_IO;
with Ada.Exceptions;
with System.Assertions;

procedure Even_Odd_Quantifiers is
   type Array_Type is array (Positive range <>) of Integer;

   procedure Process_Some_Even_Array (Arr : in out Array_Type) with
      Pre => (for some Idx in Arr'Range => Arr (Idx) rem 2 = 0)
   is
   begin
      for Elem of Arr loop
         Elem := Elem + 1;
      end loop;
   end Process_Some_Even_Array;

   procedure Process_All_Even_Array (Arr : in out Array_Type) with
      Pre => (for all Idx in Arr'Range => Arr (Idx) rem 2 = 0)
   is
   begin
      for Idx in Arr'Range loop
         Arr (Idx) := Arr (Idx) * 2;
      end loop;
   end Process_All_Even_Array;

   procedure Process_All_Odd_Array (Arr : in out Array_Type) with
      Pre => (for all Idx in Arr'Range => Arr (Idx) rem 2 = 1)
   is
   begin
      for Idx in Arr'Range loop
         Arr (Idx) := Arr (Idx) * 3;
      end loop;
   end Process_All_Odd_Array;

   procedure Process_Some_Odd_Array (Arr : in out Array_Type) with
      Pre => (for some Idx in Arr'Range => Arr (Idx) rem 2 = 1)
   is
   begin
      for Elem of Arr loop
         Elem := Elem - 1;
      end loop;
   end Process_Some_Odd_Array;

   procedure Display_Array (Arr : in Array_Type) is
   begin
      for Elem of Arr loop
         Ada.Text_IO.Put (Integer'Image (Elem));
      end loop;
      Ada.Text_IO.New_Line;
   end Display_Array;

   Arr_1 : Array_Type (1 .. 5) := (1, 2, 3, 4, 5);
   Arr_2 : Array_Type (1 .. 5) := (2, 4, 18, 20, 12);
   Arr_3 : Array_Type (1 .. 5) := (3, 17, 19, 21, 19);
begin
   Process_All_Even_Array (Arr_2);
   Display_Array (Arr_2);

   declare
   begin
      Process_All_Even_Array (Arr_1);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint failed : " & Ada.Exceptions.Exception_Message (E));
   end;

   Process_All_Odd_Array (Arr_3);
   Display_Array (Arr_3);

   declare
   begin
      Process_All_Odd_Array (Arr_2);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint failed : " & Ada.Exceptions.Exception_Message (E));
   end;

   Process_Some_Even_Array (Arr_1);
   Display_Array (Arr_1);

   declare
   begin
      Process_Some_Even_Array (Arr_3);
      Display_Array (Arr_3);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint failed : " & Ada.Exceptions.Exception_Message (E));
   end;

   declare
   begin
      Process_Some_Odd_Array (Arr_1);
      Display_Array (Arr_1);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint failed : " & Ada.Exceptions.Exception_Message (E));
   end;

   declare
   begin
      Process_Some_Even_Array (Arr_1);
      Display_Array (Arr_1);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint failed : " & Ada.Exceptions.Exception_Message (E));
   end;

   declare
   begin
      Process_Some_Odd_Array (Arr_2);
      Display_Array (Arr_2);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint failed : " & Ada.Exceptions.Exception_Message (E));
   end;
end Even_Odd_Quantifiers;
