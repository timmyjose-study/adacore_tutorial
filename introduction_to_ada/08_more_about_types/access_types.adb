with Ada.Text_IO;

with Dates;

procedure Access_Types is
   type Date_Acc is access all Dates.Date;

   D : Date_Acc := null;
   -- use qualified expressions for initialisation of access types from
   D1 : Date_Acc := new Dates.Date'(22, Dates.November, 2011);

   Temp_Date : aliased Dates.Date := (13, Dates.July, 1907);
   D2        : Date_Acc           := new Dates.Date;

   procedure Display_Date_Fields
     (Day : in Integer; Month : in Dates.Month_Type; Year : in Integer)
   is
   begin
      Ada.Text_IO.Put_Line
        (Integer'Image (Day) & "/ " & Dates.Month_Type'Image (Month) & "/" &
         Integer'Image (Year));
   end Display_Date_Fields;
begin
   D := new Dates.Date'(20, Dates.May, 2020);
   Display_Date_Fields (D.all.Day, D.all.Month, D.all.Year);
   Display_Date_Fields (D1.all.Day, D1.all.Month, D1.all.Year);

   D := null;
   D := Temp_Date'Access;
   Display_Date_Fields (D.all.Day, D.all.Month, D.all.Year);

   D2 := Temp_Date'Access;
   Display_Date_Fields (D2.all.Day, D2.all.Month, D2.all.Year);
end Access_Types;
