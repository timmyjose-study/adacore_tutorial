with Ada.Text_IO;

package body Encapsulate is
  procedure Hello is
  begin
    Hello2;
  end Hello;

  procedure Hello2 is
  begin
    Ada.Text_IO.Put_Line ("Hello, world!");
  end Hello2;
end Encapsulate;
