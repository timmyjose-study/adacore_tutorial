with Ada.Text_IO;

package body P is
   procedure Foo (Self : in out My_Class) is
   begin
      Ada.Text_IO.Put_Line ("In My_Class.Foo");
   end Foo;

   procedure Foo (Self : in out Derived) is
   begin
      Ada.Text_IO.Put_Line ("In Derived.Foo, and A = " & Integer'Image (Self.A));
   end Foo;
end P;
