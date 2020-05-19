-- this is specific to the GNAT toolchain where reading an out parameter before being set is an error

procedure Out_Read_Before_Write_Warnings is
   procedure Foo (A : out Integer) is
      B : Integer := A; -- this should trigger a warning
   begin
     A := B;
   end Foo;
begin
   null;
end Out_Read_Before_Write_Warnings;
