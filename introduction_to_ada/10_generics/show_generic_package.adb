with Ada.Text_IO;

with Element;

procedure Show_Generic_Package is
   package Element_Integer is new Element (T => Integer);

   procedure Display_Initialized is
   begin
      if Element_Integer.Is_Valid then
         Ada.Text_IO.Put_Line ("Initialized with value " & Integer'Image (Element_Integer.Get));
      else
         Ada.Text_IO.Put_Line ("Uninitialized");
      end if;
   end Display_Initialized;
begin
   Display_Initialized;

   Element_Integer.Set (100);
   Display_Initialized;

   Element_Integer.Reset;
   Display_Initialized;
end Show_Generic_Package;
