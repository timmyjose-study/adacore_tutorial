generic
   Description : String;
   type T is private;
   with function Comparison (X, Y : T) return Boolean;
procedure Check (X, Y : T);
