#include <stdio.h>

struct Node
{
    int data;
    struct Node* next;
    struct Node* prev;
};

void push (struct Node** head_ref, int new_data);