#include <stdio.h>
#include <stdlib.h>

#include "double_linkedList.h"

int main(void)
{
    return 0;
}

void push (struct Node** head_ref, int new_data)
{
    //allocate memory
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));

    //put in the data
    new_node->data = new_data;

    //make next of new node as head and previous as NULL
    new_node->next = *head_ref;
    new_node->prev = NULL;

    //change prev of head node to new node
    if((*head_ref) != NULL)
    {
        (*head_ref)->prev = new_node;
    }

    //move the head to point to the new node
    *head_ref = new_node;
}
