with Ada.Text_IO;

procedure More_Access_Types is
   type Month_Type is
     (January, February, March, April, May, June, July, August, September,
      October, November, December);

   type Date is record
      Day   : Integer range 1 .. 31;
      Month : Month_Type;
      Year  : Integer range 0 .. 9999;
   end record;

   type Date_Acc is access Date;
   type String_Acc is access String;

   D      : Date_Acc   := new Date;
   Buffer : String_Acc := new String (1 .. 5);
begin
   D.all      := (Day => 12, Month => March, Year => 2020);
   Buffer.all := "Hello";

   Ada.Text_IO.Put_Line
     ("D = " & Integer'Image (D.all.Day) & "/ " &
      Month_Type'Image (D.all.Month) & "/" & Integer'Image (D.all.Year));
   Ada.Text_IO.Put_Line ("Buffer = " & Buffer.all);
end More_Access_Types;
