#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "hash_talbe.h"

static ht_item* ht_new_item(const char* k, const char* v){
    ht_item* i = malloc(sizeof(ht_item));
    i->key = strdup(k);
    i->value = strdup(v);
    return i;
}