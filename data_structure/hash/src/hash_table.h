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
    ht_item **items;
} ht_hash_table;

/**
 * Allocates a chunk of memory the size of an ht_item,
 * and saves a copy of the strings k and v in the new chunk
 * of memory.
 **/
static ht_item *ht_new_item(const char *k, const char *v);

/**
 * to initialise a new hash table.
 **/
ht_hash_table *ht_new();

/**
 * to delect ht_items and ht_hash_tables
 **/
static void ht_del_item(ht_item *i);
void ht_del_hash_table(ht_hash_table *ht);

/**
 * hash algorithm
 * *s is string
 * a should be a prime number larger than the size of alphabet
 * m is num_buckets
 **/
static int ht_hash(const char *s, const int a, const int m);

//double hashing
static int ht_get_hash(const char *s, const int num_buckets, const int attempt);

void ht_insert(ht_hash_table *ht, const char *key, const char *value);
char *ht_search(ht_hash_table *ht, const char *key);
void ht_delete(ht_hash_table *ht, const char *key);