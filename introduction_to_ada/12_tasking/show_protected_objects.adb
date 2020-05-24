with Ada.Text_IO;

procedure Show_Protected_Objects is
   protected Obj is
      procedure Set (V : in Integer);
      function Get return Integer;

   private

      Local : Integer := 0;
   end Obj;

   protected body Obj is
      procedure Set (V : in Integer) is
      begin
         Local := V;
      end Set;

      function Get return Integer is
      begin
         return Local;
      end Get;
   end Obj;
begin
   Obj.Set (100);
   Ada.Text_IO.Put_Line ("Obj = " & Integer'Image (Obj.Get));

   Obj.Set (200);
   Ada.Text_IO.Put_Line ("Obj = " & Integer'Image (Obj.Get));
end Show_Protected_Objects;
