#include "my_func.h"

int func_call_count = 0;

int my_func(int x)
{
  func_call_count++;

  return x * 2;
}
