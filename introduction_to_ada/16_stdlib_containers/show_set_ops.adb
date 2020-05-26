with Ada.Text_IO;
with Ada.Strings.Hash;
with Ada.Containers.Hashed_Sets;

procedure Show_Set_Ops is
   function Equivalent_Elements (L, R : in Integer) return Boolean is (L = R);
   function Hash (E : in Integer) return Ada.Containers.Hash_Type is
     (Ada.Strings.Hash (Integer'Image (E)));

   package Integer_Sets is new Ada.Containers.Hashed_Sets
     (Element_Type        => Integer, Hash => Hash,
      Equivalent_Elements => Equivalent_Elements);

   use type Integer_Sets.Set;

   function Img (I : in Integer) return String renames Integer'Image;
   function Img (C : in Ada.Containers.Count_Type) return String renames
     Ada.Containers.Count_Type'Image;

   procedure Show_Elements (S : in Integer_Sets.Set) is
   begin
      Ada.Text_IO.Put_Line ("Set has " & Img (S.Length) & " elements");

      if not S.Is_Empty then
         for Elem of S loop
            Ada.Text_IO.Put (Img (Elem) & " ");
         end loop;
         Ada.Text_IO.New_Line (2);
      end if;
   end Show_Elements;

   S1, S2, S3 : Integer_Sets.Set;
begin
   S1.Insert (0);
   S1.Insert (10);
   S1.Insert (13);

   S2.Insert (0);
   S2.Insert (10);
   S2.Insert (14);

   S3.Insert (0);
   S3.Insert (13);

   Ada.Text_IO.Put_Line ("S1");
   Show_Elements (S1);

   Ada.Text_IO.Put_Line ("S2");
   Show_Elements (S2);

   Ada.Text_IO.Put_Line ("S3");
   Show_Elements (S3);

   if S3.Is_Subset (S1) then
      Ada.Text_IO.Put_Line ("S3 is indeed a subset of S1");
   else
      Ada.Text_IO.Put_Line ("S3 is not a subset of S1");
   end if;

   S3 := S1 or S2;
   Ada.Text_IO.Put_Line ("S1 union S2");
   Show_Elements (S3);

   S3 := S1 and S2;
   Ada.Text_IO.Put_Line ("S1 intersection S2");
   Show_Elements (S3);

   S3 := S1 - S2;
   Ada.Text_IO.Put_Line ("S1 - S2");
   Show_Elements (S3);

   S3 := S1 xor S2;
   Ada.Text_IO.Put_Line ("S1 symmetric difference (xor) S2");
   Show_Elements (S3);
end Show_Set_Ops;
