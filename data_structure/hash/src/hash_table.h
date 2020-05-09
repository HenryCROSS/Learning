#include <stdio.h>

typedef struct
{
    char *key;
    char *value;
} ht_item;

typedef struct
{
    int size;
    int count;
    int base_size;
    //an singular array of ht_item
    ht_item **items;
} ht_hash_table;

/**
 * to initialise a new hash table.
 **/
ht_hash_table *ht_new();

/**
 * to delect ht_items and ht_hash_tables
 **/
void ht_del_hash_table(ht_hash_table *ht);

//API
void ht_insert(ht_hash_table *ht, const char *key, const char *value);
char *ht_search(ht_hash_table *ht, const char *key);
void ht_delete(ht_hash_table *ht, const char *key);
