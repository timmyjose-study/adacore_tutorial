#include <stdio.h>
#include <math.h>
#include <time.h>

-- around 100% faster than the Ada version
void computationally_intensive_app ()
{
  clock_t start_time, stop_time;
  double elapsed_time = 0.0;
  double x = 0.0;

  start_time = clock();

  for (int i = 0; i < 10000000; i++)
    x = tan(atan(tan(atan(tan(atan(tan(atan(tan(atan(tan(atan(0.577))))))))))));

  stop_time = clock();
  elapsed_time = (double)(stop_time - start_time) / CLOCKS_PER_SEC;
  printf("Elapsed time = %f seconds\n", elapsed_time);
}

int main()
{
  computationally_intensive_app();

  return 0;
}