with Ada.Text_IO;
with Ada.Containers.Ordered_Sets;

procedure Show_Set_Init is
   package Integer_Sets is new Ada.Containers.Ordered_Sets (Element_Type => Integer);

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (C : in Ada.Containers.Count_Type) return String renames
     Ada.Containers.Count_Type'Image;

   procedure Show_Elements (S : in Integer_Sets.Set) is
   begin
      Ada.Text_IO.Put_Line ("Set S has " & Img (S.Length) & " elements");

      if not S.Is_Empty then
         for Elem of S loop
            Ada.Text_IO.Put (Img (Elem) & " ");
         end loop;
         Ada.Text_IO.New_Line;
      end if;
   end Show_Elements;

   S   : Integer_Sets.Set;
   C   : Integer_Sets.Cursor;
   Ins : Boolean := False;
begin
   S.Insert (1);
   S.Insert (2);
   S.Insert (3);

   S.Insert (1, C, Ins);
   if not Ins then
      Ada.Text_IO.Put_Line ("1 already exists in the set");
   end if;

   -- this is a much nicer way of inserting elements without having to worry
   -- about constraint errors raised by duplicate elements
   for Num in 1 .. 10 loop
      S.Include (Num);
   end loop;

   Show_Elements (S);
end Show_Set_Init;
