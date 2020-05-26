with Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
with Ada.Containers.Vectors;

procedure Show_Vector_Inst is
   package Integer_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   V : Integer_Vectors.Vector;

   subtype Small_Int is Integer range 1 .. 100;
   package Random_Int is new Ada.Numerics.Discrete_Random
     (Result_Subtype => Small_Int);
   Random_Int_Generator : Random_Int.Generator;

   function Generate_Random_Number return Small_Int is
   begin
      Random_Int.Reset (Gen => Random_Int_Generator);
      return Random_Int.Random (Gen => Random_Int_Generator);
   end Generate_Random_Number;

begin
   for Idx in 1 .. 5 loop
      declare
         Val : Small_Int := Generate_Random_Number;
      begin
         Ada.Text_IO.Put_Line
           ("Adding" & Small_Int'Image (Val) & " to the vector");
         Integer_Vectors.Append (V, New_Item => Val);
      end;
   end loop;

   for Elem of V loop
     Ada.Text_IO.Put (Small_Int'Image (Elem) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Show_Vector_Inst;
