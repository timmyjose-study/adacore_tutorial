-- Overflow checks for type-level overflow is only done at specific boundaries (such as assignments) - this does mean
-- that intermediate values will possibly not raise any warnings or errors, but the result types will still be checked
-- for conformance to the type's range values (since it falls in the assignment category as mentioned before)

with Ada.Text_IO;

procedure Overflow_No_Error is
   type My_Int is range 1 .. 20;
   A : My_Int := 12;
   B : My_Int := 15;
   M : My_Int := (A + B) / 2; -- overflow in A + B, but M is still within range
   C : My_Int := 20;
   --N : My_Int :=
   --  (B + C + 100) /
   --  2; -- this still raises an contraint error since the result is not within range
begin
   for Iter in 1 .. M loop
      Ada.Text_IO.Put_Line (My_Int'Image (Iter) & ": Ada is nice!");
   end loop;
end Overflow_No_Error;
