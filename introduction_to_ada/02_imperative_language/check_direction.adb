with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Check_Direction is
   Dir : Integer := 0;
begin
   Ada.Text_IO.Put_Line ("Enter a number in  the range 0 .. 360");
   Ada.Integer_Text_IO.Get (Dir);

   Ada.Integer_Text_IO.Put (Dir);
   if Dir = 0 or Dir = 360 then
      Ada.Text_IO.Put_Line (" is due East.");
   elsif Dir in 1 .. 89 then
      Ada.Text_IO.Put_Line (" is in the North-East quadrant.");
   elsif Dir = 90 then
      Ada.Text_IO.Put_Line (" is due North.");
   elsif Dir in 91 .. 179 then
      Ada.Text_IO.Put_Line (" is in the North-West quadrant.");
   elsif Dir = 180 then
      Ada.Text_IO.Put_Line (" is due West.");
   elsif Dir in 180 .. 269 then
      Ada.Text_IO.Put_Line (" is in the South-West quadrant.");
   elsif Dir = 270 then
      Ada.Text_IO.Put_Line (" is due South.");
   elsif Dir in 271 .. 359 then
      Ada.Text_IO.Put_Line (" is in the South-East quadrant.");
   else
      Ada.Text_IO.Put_Line (" is not in the range 0 .. 360.");
   end if;
end Check_Direction;
