with Var_Size_Record; use Var_Size_Record;
with Ada.Numerics.Discrete_Random;

procedure Var_Size_Record_Main is
   subtype Custom_Int_Type is Positive range 1 .. 100;
   package Random_Int is new Ada.Numerics.Discrete_Random
     (Result_Subtype => Custom_Int_Type);
   Random_Int_Generator : Random_Int.Generator;

   function Generate_Random_Number return Custom_Int_Type is
   begin
      Random_Int.Reset (Gen => Random_Int_Generator);
      return Random_Int.Random (Gen => Random_Int_Generator);
   end Generate_Random_Number;

   G : Growable_Stack :=
     (Max_Len => 1024, Items => (1, 2, 3, 4, 5, others => 0), Len => 5);
begin
   Display_Growable_Stack (G);
   Display_Growable_Stack_Full (G);

   declare
      G1 : Growable_Stack := (Max_Len => 10, Items => (others => 0), Len => 0);
   begin
      Display_Growable_Stack (G1);
      Display_Growable_Stack_Full (G1);

      for Index in 1 .. 5 loop
         G1.Items (Index) := Generate_Random_Number;
         G1.Len           := G1.Len + 1;
      end loop;

      Display_Growable_Stack (G1);
      Display_Growable_Stack_Full (G1);
   end;
end Var_Size_Record_Main;
