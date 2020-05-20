package Pkgs is
   function F (A : Integer) return Integer;
   function F (A : Character) return Integer;

   type SSID is new Integer;

   function Convert (Self : SSID) return Integer;
   function Convert (Self : SSID) return String;
end Pkgs;
