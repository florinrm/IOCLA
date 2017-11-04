#include <stdio.h>
#include <stdlib.h>

int main ()
{
  int array[] = {1, 3, 2, 4, -1};
  int n = sizeof(array) / sizeof(int);
  int i = 0, j = 0;
  start:
  {
    if (array[j] >= array[j + 1])
    {
      int aux = array[j];
      array[j] = array[j + 1];
      array[j + 1] = aux;
    }
    j++;
    if (j < n - i - 1)
      goto start;
    i++;
    if (i < n)
      {
        j = 0;
        goto start;
      }
  }

  for (int k = 0; k < n; k++)
    printf("%d ", array[k]);
  return 0;
}
