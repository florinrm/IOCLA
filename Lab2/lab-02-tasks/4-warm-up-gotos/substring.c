#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main ()
{
  char one[] = "feck";
  char two[] = "!";
  int i, j, index = -1;
  i = 0, j = 0;

  start: {
    if (one[i] != '\0' && one[i] != two[0])
    {
      i++;
      goto start;
    }
    if (one[i] == '\0')
    {
      goto end;
    }
    index = i;
    if (one[i] == two[j] && one[i] != '\0' && two[j] != '\0')
    {
      i++;
      j++;
      goto start;
    }
    if (two[j] == '\0')
    {
      goto end;
    }
    if (one[i] == '\0')
    {
      goto end;
    }
    i = index + 1;
    j = 0;
    if (one[i] != '\0')
      goto start;
  }

  end:;

  printf("index = %d\n", index);
  return 0;
}
