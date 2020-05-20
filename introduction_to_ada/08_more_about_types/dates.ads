package Dates is
  type Month_Type is (January, February, March, April, May, June, July, August, September, October, November, December);

  type Date is record
    Day : Integer range 1 .. 31 := 1;
    Month : Month_Type := January;
    Year : Integer range 0 .. 99999 := 2020;
  end record;
end Dates;
