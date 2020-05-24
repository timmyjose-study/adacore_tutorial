with Ada.Text_IO;

procedure Show_Protected_Object_Type is
   protected type Obj_Type is
      procedure Set (V : in Integer);
      entry Get (V : out Integer);

   private

      Local  : Integer := 0;
      Is_Set : Boolean := False;
   end Obj_Type;

   protected body Obj_Type is
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
   end Obj_Type;

   Res : Integer := 0;
   Obj : Obj_Type;

   task Set_Obj;

   task body Set_Obj is
   begin
      delay 2.0;
      Obj.Set (5);
   end Set_Obj;
begin
   Obj.Get (Res);
   Ada.Text_IO.Put_Line ("Number is : " & Integer'Image (Res));
end Show_Protected_Object_Type;
