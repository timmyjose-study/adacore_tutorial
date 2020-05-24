with Check;

procedure Check_Main is
   procedure Check_Integer is new Check (Description => "integers",
      T => Integer, Comparison => "=");
   procedure Check_Float is new Check (Description => "floats", T => Float,
      Comparison                                   => "=");

   Int1   : Integer := 1;
   Int2   : Integer := 2;
   Int3   : Integer := 1;
   Float1 : Float := 2.0;
   Float2 : Float := 2.0;
   Float3 : Float := 1.0;
begin
   Check_Integer (Int1, Int2);
   Check_Integer (Int1, Int3);
   Check_Integer (Int3, Int2);
   Check_Float (Float1, Float2);
   Check_Float (Float1, Float3);
   Check_Float (Float2, Float3);
end Check_Main;
