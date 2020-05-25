with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Calendar;
with Ada.Containers.Vectors;
with Ada.Exceptions;
with System.Assertions;

procedure Show_Type_Invariants is
   use type Ada.Calendar.Time;

   -- type invariants are for private types
   package Courses is
      type Course is private with
         Type_Invariant => Check (Course);

      type Course_Container is private;

      procedure Add (CC : in out Course_Container; C : in Course);

      function Init
        (Name : String; Start_Date, End_Date : Ada.Calendar.Time)
         return Course;

      function Check (C : in Course) return Boolean;

   private

      type Course is record
         Name : Ada.Strings.Unbounded.Unbounded_String :=
           Ada.Strings.Unbounded.Null_Unbounded_String;
         Start_Date : Ada.Calendar.Time;
         End_Date   : Ada.Calendar.Time;
      end record;

      function Check (C : in Course) return Boolean is
        (C.Start_Date <= C.End_Date);

      package Course_Vectors is new Ada.Containers.Vectors
        (Index_Type => Positive, Element_Type => Course);

      type Course_Container is record
         V : Course_Vectors.Vector;
      end record;
   end Courses;

   package body Courses is
      function Init
        (Name : String; Start_Date, End_Date : Ada.Calendar.Time) return Course
      is
      begin
         return
           Course'
             (Name       => Ada.Strings.Unbounded.To_Unbounded_String (Name),
              Start_Date => Start_Date, End_Date => End_Date);
      end Init;

      procedure Add (CC : in out Course_Container; C : in Course) is
      begin
         CC.V.Append (New_Item => C);
      end Add;
   end Courses;

   CC : Courses.Course_Container;
begin
   Courses.Add
     (CC,
      Courses.Init
        (Name       => "Intro to photography",
         Start_Date => Ada.Calendar.Time_Of (2_020, 1, 2),
         End_Date   => Ada.Calendar.Time_Of (2_020, 2, 10)));

   Courses.Add
     (CC,
      Courses.Init
        (Name       => "Intro to video",
         Start_Date => Ada.Calendar.Time_Of (2_020, 5, 11),
         End_Date   => Ada.Calendar.Time_Of (2_020, 6, 7)));

   -- this will trigger a type invariant error
   declare
   begin
      Courses.Add
        (CC,
         Courses.Init
           (Name       => "Intro to woodwork",
            Start_Date => Ada.Calendar.Time_Of (2_020, 11, 30),
            End_Date   => Ada.Calendar.Time_Of (2_020, 5, 21)));
   exception
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Type invariant failed : " & Ada.Exceptions.Exception_Message (E));
   end;
end Show_Type_Invariants;
