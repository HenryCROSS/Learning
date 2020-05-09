#include <stdio.h>

#include "hash_table.h"

int main(void)
{
    ht_hash_table *ht = ht_new();
    ht_del_hash_table(ht);
    
    printf("\n\n{THE APPLICATION IS TERMINATED!}\n\n");
    return 0;
}