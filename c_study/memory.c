#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    //not sure the different
    int *a = malloc(sizeof(int *));
    int *b = malloc(sizeof(int));

    printf("sizeof a: %lld", sizeof(a));
    printf("sizeof b: %lld", sizeof(b));
    printf("sizeof *a: %lld", sizeof(*a));
    printf("sizeof *b: %lld", sizeof(*b));
    return 0;
}