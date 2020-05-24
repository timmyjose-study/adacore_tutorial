with Ada.Text_IO;

procedure Show_Float_IO_Inst is
   type Price is digits 3;

   package Price_IO is new Ada.Text_IO.Float_IO (Num => Price);

   P : Price;
begin
   -- avoid showing in scientific notation by default
   Price_IO.Default_Exp := 0;
   -- force two places of decimal precision
   Price_IO.Default_Aft := 2;

   P := 12345.54321;
   Price_IO.Put (P, Fore => 10, Aft => 2, Exp => 0);
   Ada.Text_IO.New_Line;

   P := 19.236;
   Price_IO.Put (P);
   Ada.Text_IO.New_Line;
end Show_Float_IO_Inst;
