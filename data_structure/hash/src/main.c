#include <stdio.h>

#include "hash_table.h"

int main(void)
{
    ht_hash_table *ht = ht_new();
    printf("\nHash Table:\n");
    ht_insert(ht, "10", "hello");
    ht_insert(ht, "11", "hello");
    ht_insert(ht, "12", "hello");
    printf("%s\n", ht_search(ht, "10"));
    printf("%s\n", ht_search(ht, "11"));
    printf("%s\n", ht_search(ht, "12"));
    ht_delete(ht, "11");
    ht_insert(ht, "10", "hello");
    printf("\n\n{problem2!!}\n\n");
    ht_del_hash_table(ht);
    
    printf("\n\n{THE APPLICATION IS TERMINATED!}\n\n");
    return 0;
}