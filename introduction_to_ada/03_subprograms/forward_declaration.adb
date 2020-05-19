with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Forward_Declaration is
   function Odd (N : in Integer) return Boolean;

   function Even (N : in Integer) return Boolean is
   begin
      if N = 0 then
         return True;
      else
         return Odd (N - 1);
      end if;
   end Even;

   function Odd (N : in Integer) return Boolean is
   begin
      if N = 0 then
         return False;
      else
         return Even (N - 1);
      end if;
   end Odd;

   N : Integer;
begin
   Ada.Text_IO.Put ("Enter the number: ");
   Ada.Integer_Text_IO.Get (N);

   Ada.Text_IO.Put_Line
     (Integer'Image (N) & (if Even (N) then " is even" else " is odd"));
   Ada.Text_IO.Put_Line
     (Integer'Image (N) & (if Odd (N) then " is odd" else " is even"));
end Forward_Declaration;
