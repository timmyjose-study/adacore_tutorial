generic
  type T is private;
  type Index is range <>;
  type Array_T is array (Index range <>) of T;
procedure Generic_Reverse_Array (Arr : in out Array_T);