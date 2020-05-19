-- the interesting part about unsigned types (mod types in Ada) is that the results don't overflow - they simply wrap around modulo the max value,
-- as seen here

with Ada.Text_IO;

procedure Unsigned_Types is
   type My_Uint is mod 2**5; -- 0 to 31

   A : My_Uint := 20;
   B : My_Uint := 15;
   M : My_Uint := A + B; -- no overflow, M = 35 mod 32 = 3
begin
   for Iter in 1 .. M loop
      Ada.Text_IO.Put_Line (My_Uint'Image (Iter) & " Hello, world!");
   end loop;
end Unsigned_Types;
