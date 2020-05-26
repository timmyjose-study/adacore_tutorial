with Ada.Text_IO;
with Ada.Real_Time;      use Ada.Real_Time;
with Ada.Execution_Time; use Ada.Execution_Time;
with Ada.Numerics.Generic_Elementary_Functions;

procedure Display_Benchmarking_Math is
   procedure Computationally_Intensive_App is
      package Funcs is new Ada.Numerics.Generic_Elementary_Functions
        (Float_Type => Long_Long_Float);
      use Funcs;

      X : Long_Long_Float;
   begin
      for Iter in 1 .. 10_000_000 loop
         X :=
           Tan
             (Arctan
                (Tan
                   (Arctan
                      (Tan
                         (Arctan
                            (Tan
                               (Arctan
                                  (Tan (Arctan (Tan (Arctan (0.577))))))))))));
      end loop;
   end Computationally_Intensive_App;

   procedure Benchmark_Elapsed_Time is
      Start_Time, Stop_Time : Time;
      Elapsed_Time          : Time_Span;
   begin
      Start_Time := Clock;
      Computationally_Intensive_App;
      Stop_Time    := Clock;
      Elapsed_Time := Stop_Time - Start_Time;

      Ada.Text_IO.Put_Line
        ("Elapsed time is " & Duration'Image (To_Duration (Elapsed_Time)) &
         " seconds");
   end Benchmark_Elapsed_Time;

   procedure Benchmark_CPU_Time is
      Start_Time, Stop_Time : CPU_Time;
      Elapsed_Time          : Time_Span;
   begin
      Start_Time := Clock;
      Computationally_Intensive_App;
      Stop_Time    := Clock;
      Elapsed_Time := Stop_Time - Start_Time;

      Ada.Text_IO.Put_Line
        ("Elapsed CPU time is " & Duration'Image (To_Duration (Elapsed_Time)) &
         " seconds");
   end Benchmark_CPU_Time;
begin
   Benchmark_Elapsed_Time;
   Benchmark_CPU_Time;
end Display_Benchmarking_Math;
