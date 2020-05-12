#include <iostream>
#include <cstdlib>

int main(void)
{
    char **a = (char **)calloc(100, sizeof(a));
    char **b = (char **)calloc(100, sizeof(*b));

    std::cout << sizeof(a) << std::endl
              << sizeof(b) << std::endl;

    return 0;
}