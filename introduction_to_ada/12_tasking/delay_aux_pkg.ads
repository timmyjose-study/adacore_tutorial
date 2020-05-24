with Ada.Real_Time;

package Delay_Aux_Pkg is
   function Get_Start_Time return Ada.Real_Time.Time with
      Inline;

   procedure Show_Elapsed_Time with
      Inline;

   procedure Computational_Intensive_App;

private

   Start_Time : Ada.Real_Time.Time := Ada.Real_Time.Clock;

   function Get_Start_Time return Ada.Real_Time.Time is (Start_Time);
end Delay_Aux_Pkg;
