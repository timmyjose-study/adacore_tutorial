pragma Assertion_Policy (Check);

with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Calendar;
with Ada.Containers.Vectors;
with Ada.Exceptions;
with System.Assertions;

procedure Show_Dynamic_Predicates is
   use type Ada.Calendar.Time;

   package Courses is
      type Course_Container is private;

      type Course is record
         Name : Ada.Strings.Unbounded.Unbounded_String :=
           Ada.Strings.Unbounded.Null_Unbounded_String;
         Start_Date : Ada.Calendar.Time;
         End_Date   : Ada.Calendar.Time;
      end record with
         Dynamic_Predicate => Course.Start_Date <= Course.End_Date;

      procedure Add (CC : in out Course_Container; C : in Course);

   private

      package Course_Vectors is new Ada.Containers.Vectors
        (Index_Type => Positive, Element_Type => Course);

      type Course_Container is record
         V : Course_Vectors.Vector;
      end record;
   end Courses;

   package body Courses is
      procedure Add (CC : in out Course_Container; C : in Course) is
      begin
         CC.V.Append (New_Item => C);
      end Add;
   end Courses;

   CC : Courses.Course_Container;
begin
   Courses.Add
     (CC,
      Courses.Course'
        (Name =>
           Ada.Strings.Unbounded.To_Unbounded_String ("Intro to photography"),
         Start_Date => Ada.Calendar.Time_Of (2_020, 5, 1),
         End_Date   => Ada.Calendar.Time_Of (2_020, 5, 10)));

   Courses.Add
     (CC,
      Courses.Course'
        (Name =>
           Ada.Strings.Unbounded.To_Unbounded_String
             ("Intro to video recording"),
         Start_Date => Ada.Calendar.Time_Of (2_020, 4, 10),
         End_Date   => Ada.Calendar.Time_Of (2_020, 5, 2)));

   -- this should trigger an error due to the predicate being violated
   declare
   begin
      Courses.Add
        (CC,
         Courses.Course'
           (Name =>
              Ada.Strings.Unbounded.To_Unbounded_String ("Intro to woodwork"),
            Start_Date => Ada.Calendar.Time_Of (2_020, 1, 20),
            End_Date   => Ada.Calendar.Time_Of (2_019, 12, 31)));
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Dynamic predicate check failed : " &
            Ada.Exceptions.Exception_Message (E));
   end;
end Show_Dynamic_Predicates;
