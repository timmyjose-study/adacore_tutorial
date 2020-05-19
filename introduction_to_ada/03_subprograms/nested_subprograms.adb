with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Nested_Subprograms is
   function Factorial (N : in Integer) return Integer is
      function Factorial_Helper (Acc : in Integer; N : in Integer) return Integer is
      begin
         if N <= 0 then
            return Acc;
         else
            return Factorial_Helper (Acc * N, N - 1);
         end if;
      end Factorial_Helper;
   begin
      return Factorial_Helper (1, N);
   end Factorial;

   N : Integer := 0;
begin
   Ada.Text_IO.Put ("Enter a number: ");
   Ada.Integer_Text_IO.Get (N);
   Ada.Text_IO.Put_Line
     ("The factorial of " & Integer'Image (N) & " is " &
      Integer'Image (Factorial (N)));
end Nested_Subprograms;
