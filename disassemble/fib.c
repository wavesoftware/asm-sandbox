#include <stdio.h>

int main(void) {
  long x, y, z;

  x = 0;
  y = 1;
  while (1) {
    printf("%ld\n", x);

    z = x + y;
    x = y;
    y = z;
  }
  
}
