#include <stdio.h>

extern int call_counter;
extern int func(int);

int main()
{
  int x;
  scanf("%d", &x);

  for (int i = 0; i < 10; i++)
    x = func(x);

  printf("Value of x = %d, and func was called %d times\n", x, call_counter);

  return 0;
}
