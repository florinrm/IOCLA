#include <stdio.h>
#include <stdlib.h>

int main ()
{
  int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int n = 10;
  int found = 7;
  int index = -1;
  int begin = 0;
  int end = n - 1;

  lel:;

  start:
  {

    int middle = begin + (end - begin) / 2;
      if (begin > end)
        {
          index = -1;
          goto lel;
        }
      if (array[middle] == found)
        index = middle;
      if (array[middle] > found)
      {
        end = middle - 1;
        goto start;
      }
      if (array[middle] < found)
      {
        begin = middle + 1;
        goto start;
      }
  }
  printf("index:  %d\n", index);
  return 0;
}
