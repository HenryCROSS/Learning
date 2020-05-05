#include <stdio.h>
#include <stdlib.h>
#include "circular_linkedList.h"

int main(void)
{
    return 0;
}

void printList(struct Node *first)
{
    struct Node *temp = first;

    if (first != NULL)
    {
        do
        {
            printf("%d ", temp->data);
            temp = temp->next;
        } while (temp != first);
    }
}

void push (struct Node **head_ref, int data)
{
    struct Node *ptr1 = malloc(sizeof(*ptr1));
    struct Node *temp = *head_ref;
    ptr1->data = data;
    ptr1->next = *head_ref;
}