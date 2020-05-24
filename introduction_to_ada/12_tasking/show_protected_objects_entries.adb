with Ada.Text_IO;

procedure Show_Protected_Objects_Entries is
   protected Obj is
      procedure Set (V : in Integer);
      entry Get (V : out Integer);

   private

      Local  : Integer := 0;
      Is_Set : Boolean := False;
   end Obj;

   protected body Obj is
      procedure Set (V : in Integer) is
      begin
         Local  := V;
         Is_Set := True;
      end Set;

      entry Get (V : out Integer) when Is_Set is
      begin
         V      := Local;
         Is_Set := False;
      end Get;
   end Obj;

   N : Integer := 0;

   task T;

   task body T is
   begin
      Ada.Text_IO.Put_Line ("Task T will delay for 4 seconds");
      delay 4.0;
      Ada.Text_IO.Put_Line ("Task T will set Obj");
      Obj.Set (5);
      Ada.Text_IO.Put_Line ("Task T has just set Obj");
   end T;
begin
   Ada.Text_IO.Put_Line ("Main application will get Obj...");
   Obj.Get (N); -- this blocks till task T sets the value
   Ada.Text_IO.Put_Line ("Main application gas just retrieved Obj");
   Ada.Text_IO.Put_Line ("Obj is : " & Integer'Image (N));
end Show_Protected_Objects_Entries;
