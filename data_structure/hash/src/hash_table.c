#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include<math.h>

#include "hash_table.h"
#include "prime.h"

#define HT_INITIAL_BASE_SIZE 50

static ht_item HT_DELETED_ITEM = {NULL, NULL};

/**
 * Allocates a chunk of memory the size of an ht_item,
 * and saves a copy of the strings k and v in the new chunk
 * of memory.
 **/
static ht_item *ht_new_item(const char *k, const char *v);

/**
 * to delect ht_items and ht_hash_tables
 **/
static void ht_del_item(ht_item *i);

/**
 * hash algorithm
 * *s is string
 * a should be a prime number larger than the size of alphabet
 * m is num_buckets
 **/
static int ht_hash(const char *s, const int a, const int m);

//double hashing, return the specific index
static int ht_get_hash(const char *s, const int num_buckets, const int attempt);

static ht_hash_table *ht_new_sized(const int base_size);

static void ht_resize(ht_hash_table *ht, const int base_size);

static void ht_resize_up(ht_hash_table *ht);

static void ht_resize_down(ht_hash_table *ht);

//It will only ever be called by code internal to the hash table.
static ht_item *ht_new_item(const char *k, const char *v)
{
    ht_item *i = malloc(sizeof(ht_item));
    i->key = _strdup(k);   //allocate memory from heap and contain an address with value k
    i->value = _strdup(v); //allocate memory from heap and contain an address with value v
    return i;
}

ht_hash_table *ht_new()
{
    // ht_hash_table *ht = malloc(sizeof(*ht));

    // ht->size = 53;
    // ht->count = 0;
    // // ht->items = calloc((size_t)ht->size, sizeof(*(ht->items)));//ht_item*
    // ht->items = calloc((size_t)ht->size, sizeof(ht_item*));
    // return ht;
    
    return ht_new_sized(HT_INITIAL_BASE_SIZE);
}

static void ht_del_item(ht_item *i)
{
    free(i->key);
    free(i->value);
    free(i);
}

void ht_del_hash_table(ht_hash_table *ht)
{
    for (int i = 0; i < ht->size; i++)
    {
        ht_item *item = ht->items[i];
        if (item != NULL)
        {
            ht_del_item(item);
        }
    }
    free(ht->items);
    free(ht);
}

static int ht_hash(const char *s, const int a, const int m)
{
    long hash = 0;
    const int len_s = strlen(s);
    for (size_t i = 0; i < len_s; i++)
    {
        hash += (long)pow(a, len_s - (i + 1)) * s[i];
        hash = hash % m;
    }
    return (int)hash;
}

static int ht_get_hash(const char *s, const int num_buckets, const int attempt)
{
    //HT_PRIME_1: 151, HT_PRIME_2: 163
    const int hash_a = ht_hash(s, 151, num_buckets);
    const int hash_b = ht_hash(s, 163, num_buckets);
    return (hash_a + (attempt * (hash_b + 1))) % num_buckets;
}

void ht_insert(ht_hash_table *ht, const char *key, const char *value)
{
    const int load = ht->count * 100 / ht->size;
    if(load > 70)
    {
        ht_resize_up(ht);
    }

    ht_item *item = ht_new_item(key, value);

    //get the location the item should be inserted
    int index = ht_get_hash(item->key, ht->size, 0);
    //get the specific memory location from the hash table 
    ht_item *cur_item = ht->items[index];

    // int i = 1;
    // while (cur_item != NULL && cur_item != &HT_DELETED_ITEM)
    // {
    //     index = ht_get_hash(item->key, ht->size, i);
    //     cur_item = ht->items[index];
    //     i++;
    // }

    int i = 1;
    //while sth inside
    while (cur_item != NULL)
    {
        //if current location is not a deleted item
        if (cur_item != &HT_DELETED_ITEM)
        {
            //if the key is the same, if there is a thing, then rewrite it
            if (strcmp(cur_item->key, key) == 0)
            {
                //the current item be deleted
                ht_del_item(cur_item);
                //rewrite the new item
                ht->items[index] = item;
                return;
            }
            //if the key is different
            else//test!!!!!!!!!!!!!!!!!!!!!!!!
            {
                index = ht_get_hash(item->key, ht->size, i);
                cur_item = ht->items[index];
                i++;
            }
            
        }
        //rewrite it directly
        else//test
        {
            ht->items[index] = item;
            ht->count++;
            return;
        }
    }

    //if it is NULL
    ht->items[index] = item;
    ht->count++;
}

char *ht_search(ht_hash_table *ht, const char *key)
{
    //get the index
    int index = ht_get_hash(key, ht->size, 0);
    //get the specific location
    ht_item *item = ht->items[index];

    int i = 1;
    while (item != NULL)
    {
        //if the current location is not deleted state
        if (item != &HT_DELETED_ITEM)
        {
            //verify the key.
            if (strcmp(item->key, key) == 0)
            {
                return item->value;
            }
        }

        //wrong location
        index = ht_get_hash(key, ht->size, i);
        item = ht->items[index];
        i++;
    }

    return NULL;
}

void ht_delete(ht_hash_table *ht, const char *key)
{
    const int load = ht->count * 100 / ht->size;
    if (load > 70)
    {
        ht_resize_up(ht);
    }
    

    //get the index
    int index = ht_get_hash(key, ht->size, 0);
    //get the specific location
    ht_item *item = ht->items[index];

    int i = 1;
    //if the item is exist
    while (item != NULL)
    {
        //if the location is not deleted state
        if (item != &HT_DELETED_ITEM)
        {
            //if the key is the same
            if (strcmp(item->key, key) == 0)
            {
                //free the item memory
                ht_del_item(item);
                //turn the specific location into deleted state
                ht->items[index] = &HT_DELETED_ITEM;
            }
        }

        //wrong location
        index = ht_get_hash(key, ht->size, i);
        item = ht->items[index];
        i++;
    }
    //decrease the item number 
    ht->count--;//what if the item is not exist in the beginning?
}

static ht_hash_table* ht_new_sized(const int base_size)
{
    ht_hash_table *ht = malloc(sizeof(*ht));
    ht->base_size = base_size;

    ht->size = next_prime(base_size);

    ht->count = 0;
    ht->items = calloc((size_t)ht->size, sizeof(ht_item*));
    return ht;
}

static void ht_resize(ht_hash_table* ht, const int base_size)
{
    if (base_size < HT_INITIAL_BASE_SIZE)
    {
        return;
    }
    ht_hash_table *new_ht = ht_new_sized(base_size);
    for (int i = 0; i < ht->size; i++)
    {
        ht_item *item = ht->items[i];
        if(item != NULL && item != &HT_DELETED_ITEM)
        {
            ht_insert(new_ht, item->key, item->value);
        }
    }
    
    ht->base_size = new_ht->base_size;
    ht->count = new_ht->count;

    //To delete new_items = ht->items
    const int tmp_size = ht->size;
    ht->size = new_ht->size;
    new_ht->size = tmp_size;

    ht_item **tmp_items = ht->items;
    ht->items = new_ht->items;
    new_ht->items = tmp_items;

    ht_del_hash_table(new_ht);
}

static void ht_resize_up(ht_hash_table *ht)
{
    const int new_size = ht->base_size * 2;
    ht_resize(ht, new_size);
}

static void ht_resize_down(ht_hash_table *ht)
{
    const int new_size = ht->base_size / 2;
    ht_resize(ht, new_size);
}