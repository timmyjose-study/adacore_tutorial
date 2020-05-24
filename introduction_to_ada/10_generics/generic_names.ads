with Generic_Reverse_Array;

package Generic_Names is
   type Name is
     (Slava, Wiktor, Armin, Gustaf, Pablo, Hippolyte, Marcel, Vincenzo, Vlad,
      Dmitri, Dave);

   type Name_Array is array (Positive range <>) of Name;

   procedure Reverse_Name_Array is new Generic_Reverse_Array (T => Name, Index => Positive, Array_T => Name_Array);
end Generic_Names;
