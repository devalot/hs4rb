#include <stdio.h>

// {BEGIN: func1}
int func1 (void)
{
    char x[3] = {'a', 'b', 'c'};
    return x[1];
}
// {END}

// {BEGIN: func2}
int func2 (void)
{
    char x[3] = {'a', 'b', 'c'};
    return *(x+1);
}
// {END}

// {BEGIN: func3}
int func3 (void)
{
    char x[3] = {'a', 'b', 'c'};
    return 1[x];
}
// {END}

// {BEGIN: func4}
int func4 (void)
{
    char x[3] = {'a', 'b', 'c'};
    return *(1+x);
}
// {END}

int main (void)
{
    printf(" CHAR: %lu\n", sizeof(char));
    printf("func1: %c\n",  func1());
    printf("func2: %c\n",  func2());
    printf("func3: %c\n",  func3());
    return 0;
}
