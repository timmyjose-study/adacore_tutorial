with Ada.Text_IO;

with P;

procedure UFCS is
   package Extended is
      type Derived2 is new P.Derived with null record;

      procedure Bar (Self : in out Derived2; Val : in Integer);
      overriding procedure Foo (Self : in out Derived2);
   end Extended;

   package body Extended is
      procedure Bar (Self : in out Derived2; Val : in Integer) is
      begin
         Self.A := Self.A + Val;
      end Bar;

      procedure Foo (Self : in out Derived2) is
      begin
         Ada.Text_IO.Put_Line
           ("In Derived2, and A = " & Integer'Image (Self.A));
      end Foo;
   end Extended;

   Obj : Extended.Derived2 := (A => 108);
begin
   Obj.Foo;
   Obj.Bar (200);
   Obj.Foo;
   Extended.Foo (Obj);
end UFCS;
