with Ada.Text_IO;

procedure Illegal_Conv_Example is
  type Meters is new Float;
  type Miles is new Float;

  Dist_Imperial: Miles;
  Dist_Metric: constant Meters := 100.0;
begin
  Dist_Imperial := (Dist_Metric * 1609.0) / 1000.0;
  Ada.Text_IO.Put_Line (Meters'Image (Dist_Metric) & " miles = " & Miles'Image (Dist_Imperial) & " miles.");
end Illegal_Conv_Example;
