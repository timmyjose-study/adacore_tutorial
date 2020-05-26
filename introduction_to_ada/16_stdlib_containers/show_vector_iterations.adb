with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Iteration is
   package Float_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Float);

   use Float_Vectors;
   V : Float_Vectors.Vector :=
     1.2 & (-2.3) & 0.01 & 1.234_34 & 13.12 & (-2_344.23) & 0.00;
begin
   for Elem of V loop
      Ada.Float_Text_IO.Put (Elem, Fore => 10, Aft => 3, Exp => 0);
   end loop;
   Ada.Text_IO.New_Line;
end Show_Vector_Iteration;
