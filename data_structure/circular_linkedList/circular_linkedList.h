#include <stdio.h>

struct Node
{
    int data;
    struct Node *next;
};

void printList(struct Node *first);

void push (struct Node **head_ref, int data);