////////////////////////////////////////////////////////
//                  ***Citation***
//
// Program entirely derived from user 'Andrew Oliver' at
// https://towardsdatascience.com/how-to-make-pi-part-1-d0b41a03111f
//
// From his section 'A Calculus Approach'
//
// I take no ownership of this program or its structure.
// Only adapted from Python to C.
//
//
/////////////////////////////////////////////////////////

#include <math.h>
#include <stdio.h>

double riemann_sum(int num) {
  double num_rectangles = num;
  double delta_x = (1 / num_rectangles);
  double x = 0;
  double pi = 0;
  double f_x = 0;
  while (x < 1) {
    f_x = sqrt(1 - pow(x, 2));
    pi += (f_x * delta_x);
    x += delta_x;
  }
  pi = 4 * pi;
  return pi;
}

int main(void) {
  printf("estimate    iteration\n");
  for (int i = 2; i < 800; i++) {
    printf("%lf     %d\n", riemann_sum(i), i);
  }
  return 0;
}
