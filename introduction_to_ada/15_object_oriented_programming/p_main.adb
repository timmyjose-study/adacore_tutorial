with Ada.Text_IO;

with P;

procedure P_Main is
   M : P.My_Class;
   D : P.Derived := P.Derived'(A => 100);
   -- the 'Class attrute tells Ada to consider any value of My_Class or its
   -- derived types to be suitable. this is how polymorphism is achieved in
   -- Ada.
   -- This is known as a "classwide type". Classwide types unfortunately are
   -- indefinite types, and can only be used via initialisation and nothing else.
   MD1 : P.My_Class'Class := M;
   MD2 : P.My_Class'Class := D; 
begin
   P.Foo (M);
   P.Foo (D);
   Ada.Text_IO.New_Line (2);

   P.Foo (MD1);
   P.Foo (MD2);

   --MD := D;
   --P.Foo (MD);
end P_Main;
