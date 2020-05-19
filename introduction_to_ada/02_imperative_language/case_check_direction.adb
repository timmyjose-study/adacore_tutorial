with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Case_Check_Direction is
   Dir : Integer := 0;
begin
   loop
      Ada.Text_IO.Put ("Enter a number in the range 0 .. 360: ");
      Ada.Integer_Text_IO.Get (Dir);

      Ada.Integer_Text_IO.Put (Dir);
      case Dir is
         when 0 | 360 =>
            Ada.Text_IO.Put_Line (" is due East.");
         when 1 .. 89 =>
            Ada.Text_IO.Put_Line (" is in the North-East quadrant.");
         when 90 =>
            Ada.Text_IO.Put_Line (" is due North.");
         when 91 .. 179 =>
            Ada.Text_IO.Put_Line (" is in th North-West quadrant.");
         when 180 =>
            Ada.Text_IO.Put_Line (" is due West.");
         when 181 .. 269 =>
            Ada.Text_IO.Put_Line (" is in the South-West quadrant.");
         when 270 =>
            Ada.Text_IO.Put_Line (" is due South.");
         when 271 .. 359 =>
            Ada.Text_IO.Put_Line (" is in the South-East quadrant.");
         when others =>
            Ada.Text_IO.Put_Line (" is not in the range 0 .. 360.");
            exit;
      end case;
   end loop;
end Case_Check_Direction;
