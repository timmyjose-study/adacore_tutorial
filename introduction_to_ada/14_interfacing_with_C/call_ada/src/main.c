#include <stdio.h>

extern int add(int, int);
extern int sub(int, int);
extern int mul(int, int);
extern int div(int, int);

int main()
{
  int x, y;
  scanf("%d%d", &x, &y);

  printf("%d + %d = %d\n", x, y, add(x, y));
  printf("%d - %d = %d\n", x, y, sub(x, y));
  printf("%d * %d = %d\n", x, y, mul(x, y));
  printf("%d / %d = %d\n", x, y, div(x, y));

  return 0;
}
