package body Names is
   procedure Reverse_Name_Array (Arr : in out Name_Array) is
   begin
      for Idx in Arr'First .. (Arr'First + Arr'Last) / 2 loop
         declare
            Temp_Name  : Name;
            Name_Left  : Name renames Arr (Idx); -- sort of an alias
            Name_Right : Name renames Arr (Arr'First + Arr'Last - Idx);
         begin
            Temp_Name  := Name_Left;
            Name_Left  := Name_Right;
            Name_Right := Temp_Name;
         end;
      end loop;
   end Reverse_Name_Array;
end Names;
