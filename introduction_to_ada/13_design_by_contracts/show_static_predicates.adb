with Ada.Text_IO;
with Ada.Exceptions;
with System.Assertions;

procedure Show_Static_Predicates is
   type Week is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);

   subtype Work_Week is Week range Mon .. Fri;

   subtype Test_Days is Work_Week with
        Static_Predicate => Test_Days in Mon | Wed | Fri;

   type Tests_Week is array (Week) of Natural with
      Dynamic_Predicate =>
      (for all Idx in Tests_Week'Range =>
         (case Idx is when Test_Days => Tests_Week (Idx) > 0,
            when others              => Tests_Week (Idx) = 0));

   Num_Tests : Tests_Week :=
     (Mon => 3, Tue => 0, Wed => 4, Thu => 0, Fri => 2, Sat => 0, Sun => 0);

   procedure Display_Test (N : Tests_Week) is
   begin
      for Idx in Test_Days loop
         Ada.Text_IO.Put_Line
           ("# tests on " & Test_Days'Image (Idx) & " = " &
            Natural'Image (N (Idx)));
      end loop;
   end Display_Test;
begin
   Display_Test (Num_Tests);

   -- trigger an error by violating the predicates
   declare
   begin
      Num_Tests (Tue) := 12;
      Display_Test (Num_Tests);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Contract violation : " & Ada.Exceptions.Exception_Message (E));
   end;

   -- this will also trigger an error
   declare
   begin
      Num_Tests (Fri) := 0;
      Display_Test (Num_Tests);
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Contract violation : " & Ada.Exceptions.Exception_Message (E));
   end;
end Show_Static_Predicates;
