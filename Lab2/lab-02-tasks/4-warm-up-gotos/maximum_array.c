#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

int main ()
{
  int my_array[] = {1, 5, 2, 9, 10, 69, -12};
  int i = 0, n = 7, max = INT_MIN;
  start:
    {
        if (my_array[i] >= max)
          max = my_array[i];
        i++;
        if (i < n)
          goto start;
    }
  printf("maximum element = %d\n", max);
  return 0;
}
