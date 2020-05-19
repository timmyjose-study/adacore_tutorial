with Ada.Text_IO;

procedure Returning_Unconstrained_Arrays is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

   function Get_Day_Name (Day : in Days) return String is
   begin
      case Day is
         when Monday =>
            return "Monday";
         when Tuesday =>
            return "Tuesday";
         when Wednesday =>
            return "Wednesday";
         when Thursday =>
            return "Thursday";
         when Friday =>
            return "Friday";
         when Saturday =>
            return "Saturday";
         when Sunday =>
            return "Sunday";
      end case;
   end Get_Day_Name;

   Today : Days := Tuesday;
begin
   Ada.Text_IO.Put_Line (Get_Day_Name (Today));
end Returning_Unconstrained_Arrays;
