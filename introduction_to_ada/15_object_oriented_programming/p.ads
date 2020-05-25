package P is
   -- a tagged type is most similar to a class in Java or C++
   type My_Class is tagged null record;

   -- by virtue of having My_Class as an argument, and being in the same scope
   -- and package, this automatically becomes a method of My_Class
   procedure Foo (Self : in out My_Class);

   -- we can derive tagged types
   type Derived is new My_Class with record
      A : Integer;
   end record;

   overriding procedure Foo (Self : in out Derived);
end P;
