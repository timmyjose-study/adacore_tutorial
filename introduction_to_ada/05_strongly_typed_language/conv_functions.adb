with Ada.Text_IO;

procedure Conv_Functions is
   type Meters is new Float;
   type Miles is new Float;

   function To_Miles (M : in Meters) return Miles is
   begin
      return Miles (M * 1.0 / 1609.0);
   end To_Miles;

   Dist_Imperial : Miles;
   Dist_Metric   : constant Meters := 100.0;
begin
  Dist_Imperial := To_Miles (Dist_Metric);
   Ada.Text_IO.Put_Line
     (Meters'Image (Dist_Metric) & " meters = " & Miles'Image (Dist_Imperial) &
      " miles");
end Conv_Functions;
