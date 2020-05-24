procedure Generic_Reverse_Array (Arr : in out Array_T) is
begin
   --for Idx in Arr'First .. (Arr'First + Arr'Last) / 2 loop
   --   declare
   --      Temp      : T;
   --      Val_Left  : T renames Arr (Idx);
   --      Val_Right : T renames Arr (Arr'First + Arr'Last - Idx);
   --   begin
   --      Temp      := Val_Left;
   --      Val_Left  := Val_Right;
   --      Val_Right := Temp;
   --   end;
   --end loop;

  for Idx in Arr'First .. (Arr'First + Arr'Last) / 2 loop
    declare
      Temp : T := Arr (Idx);
    begin
      Arr (Idx) := Arr (Arr'First + Arr'Last - Idx);
      Arr (Arr'First + Arr'Last -Idx) := Temp;
    end;
  end loop;
end Generic_Reverse_Array;
