#include <stdio.h>
#include <malloc.h>

int main(void)
{
    char chs[] = {'4','9'};
    int len = sizeof chs / sizeof(char), i;
    int *index = (int*)malloc(len * sizeof(int));
    char *result = (char*)malloc(len * sizeof(char));
    for ( i = 0; i < len; i++)
    {
        index[i] = 0;
    }

    int level = 0;
    while (1)
    {
        if (len <= level)
        {
            level--;
            printf("%s\n", result);
        }
        if (len == index[level])
        {
            
            index[level] = 0;
            if (level == 0)
            {
                /* code */
                printf("%s\n", "OK");
                return 0;
            }
            level--;
            continue;
        }
        result[level] = chs[index[level]];
        index[level]++;
        level++;
    }
    
    free(index);
    free(result);
    return 0;
}