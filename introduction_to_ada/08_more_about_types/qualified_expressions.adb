with Ada.Text_IO;

procedure Qualified_Expressions is
   type SSID is new Integer;

   function Convert (Self : SSID) return Integer is
   begin
      return Integer (Self);
   end Convert;

   function Convert (Self : SSID) return String is
   begin
      return SSID'Image (Self);
   end Convert;

   function Convert (Self : Integer) return String is
   begin
      return Integer'Image (Self);
   end Convert;

   S : String :=
     Convert
       (SSID'
          (123_456_789)); -- this is a qualified expression (similar to the @as builtin in Zig)
   S1 : String :=
     Convert
       (Integer'
          (99_000_1235)); -- and so is this - this is not a type cast but more of a type hint

   Temp : SSID   := 123_456_789;
   S2   : String := Convert (Temp); -- this works
begin
   Ada.Text_IO.Put_Line (S);
   Ada.Text_IO.Put_Line (S1);
   Ada.Text_IO.Put_Line (S2);
end Qualified_Expressions;
