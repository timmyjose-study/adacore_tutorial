with Simple_List;

procedure Simple_List_Main is
   List : Simple_List.Node_Acc := null;
begin
   for Num in 1 .. 10 loop
      Simple_List.Add_To_Back (List, Num);
      Simple_List.Display_List (List);
   end loop;

   Simple_List.Display_List (List);

   for Iter in 1 .. 5 loop
      Simple_List.Delete_From_Back (List);
      Simple_List.Display_List (List);
   end loop;

   Simple_List.Display_List (List);

   for Iter in 1 .. 5 loop
      Simple_List.Delete_From_Back (List);
      Simple_List.Display_List (List);
   end loop;

   Simple_List.Display_List (List);
   --Simple_List.Delete_From_Back (List);
end Simple_List_Main;
