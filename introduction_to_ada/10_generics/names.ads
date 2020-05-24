package Names is
   type Name is
     (Slava, Wiktor, Armin, Gustaf, Pablo, Hippolyte, Marcel, Vincenzo, Vlad,
      Dmitri, Dave);

   type Name_Array is array (Positive range <>) of Name;

   procedure Reverse_Name_Array (Arr : in out Name_Array);
end Names;
