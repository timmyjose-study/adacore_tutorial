with Ada.Text_IO;

procedure Unconstrained_Array_Example is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   type Workload_Type is array (Days range <>) of Natural;

   Weekday_Workload : Workload_Type (Monday .. Friday)   := (1, 2, 3, 4, 5);
   Weekend_Workload : Workload_Type (Saturday .. Sunday) :=
     (Sunday => 0, others => 6);
begin
   for D in Weekday_Workload'Range loop
      Ada.Text_IO.Put_Line
        ("The workload for " & Days'Image (D) & " is " &
         Natural'Image (Weekday_Workload (D)));
   end loop;
   Ada.Text_IO.New_Line;

   for D in Weekend_Workload'Range loop
      Ada.Text_IO.Put_Line
        ("The workload for " & Days'Image (D) & " is " &
         Natural'Image (Weekend_Workload (D)));
   end loop;
   Ada.Text_IO.New_Line;
end Unconstrained_Array_Example;
