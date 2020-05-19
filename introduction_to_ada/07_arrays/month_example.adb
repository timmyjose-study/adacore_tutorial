with Ada.Text_IO;

procedure Month_Example is
   type Month_Duration is range 1 .. 31;
   type Month is (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
   type Month_Array is array (Month) of Month_Duration;

   Months : Month_Array := (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
   for M in Month loop
      Ada.Text_IO.Put_Line
        (Month'Image (M) & " has " & Month_Duration'Image (Months (M)) &
         " days");
   end loop;
   Ada.Text_IO.New_Line;
end Month_Example;
