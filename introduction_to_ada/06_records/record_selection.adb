with Ada.Text_IO;

procedure Record_Selection is
   type Month_Type is
     (January, February, March, April, May, June, July, August, September,
      October, November, December);

   type Date is record
      Day   : Positive range 1 .. 31  := 1;
      Month : Month_Type              := January;
      Year  : Natural range 0 .. 9999 := 2020;
   end record;

   Ada_Birthday : Date := (10, December, 1815);
   Today        : Date := (Day => 19, Month => May, Year => 2020);
   Default_Date : Date;

   procedure Display_Date (D : in Date) is
   begin
      Ada.Text_IO.Put_Line
        ("Date { Day = " & Positive'Image (D.Day) & ", Month = " &
         Month_Type'Image (D.Month) & ", Year = " & Natural'Image (D.Year) &
         " }");
      Ada.Text_IO.New_Line;
   end Display_Date;
begin
  Display_Date (Ada_Birthday);
  Display_Date (Today);
  Display_Date (Default_Date);
end Record_Selection;
