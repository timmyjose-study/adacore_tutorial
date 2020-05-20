with Ada.Text_IO;

procedure Character_Example is
  type My_Char is ('a', 'b', 'c');

  C : My_Char;
  N : Character;
begin
  C := 'a';
  Ada.Text_IO.Put_Line ("C = " & My_Char'Image (C));

  N := 'x';
  Ada.Text_IO.Put_Line ("N = " & Character'Image (N));

  N := Character'Val (119);
  Ada.Text_IO.Put_Line ("N = " & Character'Image (N));
end Character_Example;