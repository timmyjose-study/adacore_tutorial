package body Pkgs is
   function F (A : Integer) return Integer is
   begin
      return A + 42;
   end F;

   function F (A : Character) return Integer is
   begin
      return Character'Pos (A) + 42;
   end F;

   function Convert (Self : SSID) return Integer is
   begin
      return Integer (Self);
   end Convert;

   function Convert (Self : SSID) return String is
   begin
      return SSID'Image (Self);
   end Convert;
end Pkgs;
