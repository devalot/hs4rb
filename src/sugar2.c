/*
 * Array indexing is syntactic sugar in C.
 *
 * Because it's just pointer arithmetic and addition is associative
 * the ordering of the variable and index don't matter.
 *
 * Syntactic Sugar: x[0]
 *   Translates to: *(x+0)
 *
 * Syntactic Sugar: 0[x]
 *   Translates to: *(0+x)
 */

#include <stdio.h>

// {BEGIN: main}
int main (void)
{
  int x[4] = {1, 2, 3, 4};
  printf("%d\n", 0[x]);
  return 0;
}
// {END}
