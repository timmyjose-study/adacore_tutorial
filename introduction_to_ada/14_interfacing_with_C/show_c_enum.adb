procedure Show_C_Enum is
   type C_Enum is (A, B, C) with
      Convention => C;
begin
   null;
end Show_C_Enum;
