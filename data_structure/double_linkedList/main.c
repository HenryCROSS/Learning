#include <stdio.h>
#include <stdlib.h>

#include "double_linkedList.h"

int main(void)
{
    return 0;
}

void push(struct Node **head_ref, int new_data)
{
    //allocate memory
    struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));

    //put in the data
    new_node->data = new_data;

    //make next of new node as head and previous as NULL
    new_node->next = *head_ref;
    new_node->prev = NULL;

    //change prev of head node to new node
    if ((*head_ref) != NULL)
    {
        (*head_ref)->prev = new_node;
    }

    //move the head to point to the new node
    *head_ref = new_node;
}

void insertAfter(struct Node *prev_node, int new_data)
{
    //check if the given value is NULL
    if (prev_node == NULL)
    {
        printf("the given previous node cannot be NULL");
        return;
    }

    struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));

    //put in the data
    new_node->data = new_data;

    //make next of new node as next of prev_node
    new_node->next = prev_node->next;

    //make the next of prev_node as new_node
    prev_node->next = new_node;

    //make prev_node as previous of new_node
    new_node->prev = prev_node;

    //change previous of new_node's next node
    if (new_node->next != NULL)
    {
        new_node->next->prev = new_node;
    }
}

void append(struct Node **head_ref, int new_data)
{
    struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));

    struct Node *last = *head_ref;

    new_node->data = new_data;

    new_node->next = NULL;

    /*if the linked list is empty, then make the new
      node as head */
    if (*head_ref == NULL)
    {
        new_node->prev = NULL;
        *head_ref = new_node;
        return;
    }

    // Else traverse till the last node
    while (last->next != NULL)
    {
        last = last->next;
    }

    //change the next of last node
    last->next = new_node;

    //make last node as previous of new node
    new_node->prev = last;

    return;
}

void insertBefore (struct Node** head_ref, struct Node* next_node, int new_data)
{
    
}