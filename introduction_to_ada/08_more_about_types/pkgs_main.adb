with Ada.Text_IO;
with Ada.Characters.Latin_1;

with Pkgs; use Pkgs;

procedure Pkgs_Main is
   Int_Val  : Integer   := 42;
   Char_Val : Character := Character'Val (88);
   SSID_Val : SSID      := 1_234_5678;
begin
   Ada.Text_IO.Put_Line (Integer'Image (F (Int_Val)));
   Ada.Text_IO.Put_Line (Integer'Image (F (Char_Val)));
   Ada.Text_IO.Put_Line (Convert (SSID_Val));
   Ada.Text_IO.Put_Line (Integer'Image (Convert (SSID_Val)));
end Pkgs_Main;
