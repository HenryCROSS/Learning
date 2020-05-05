#include <stdio.h>
#include <stdlib.h>

#include "double_linkedList.h"

int main(void)
{
    /* Start with the empty list */
    struct Node *head = NULL;

    // Insert 6.  So linked list becomes 6->NULL
    append(&head, 6);

    printf("Created DLL is: ");
    printList(head);

    // Insert 7 at the beginning. So linked list becomes 7->6->NULL
    push(&head, 7);

    printf("\nCreated DLL is: ");
    printList(head);

    // Insert 1 at the beginning. So linked list becomes 1->7->6->NULL
    push(&head, 1);

    printf("\nCreated DLL is: ");
    printList(head);

    // Insert 4 at the end. So linked list becomes 1->7->6->4->NULL
    append(&head, 4);

    printf("\nCreated DLL is: ");
    printList(head);

    // Insert 8, after 7. So linked list becomes 1->7->8->6->4->NULL
    insertAfter(head->next, 8);

    printf("\nCreated DLL is: ");
    printList(head);

    printf("\n\ndelete=>\n\n");

    deleteNode(&head, 8);

    printf("\nCreated DLL is: ");
    printList(head);

    deleteNode(&head, 1);

    printf("\nCreated DLL is: ");
    printList(head);

    deleteNode(&head, 7);

    printf("\nCreated DLL is: ");
    printList(head);
    
    deleteNode(&head, 4);
    printf("\nCreated DLL is: ");
    printList(head);

    deleteNode(&head, 6);
    printf("\nCreated DLL is: ");
    printList(head);

    append(&head, 1);
    printf("\nCreated DLL is: ");
    printList(head);

    return 0;
}

void printList(struct Node *node)
{
    struct Node *last = NULL;
    printf("\nTraversal in forward direction \n");
    while (node != NULL)
    {
        printf(" %d ", node->data);
        last = node;
        node = node->next;
    }

    printf("\nTraversal in reverse direction \n");
    while (last != NULL)
    {
        printf(" %d ", last->data);
        last = last->prev;
    }
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

void insertAfter(struct Node *target_node, int new_data)
{
    //check if the given value is NULL
    if (target_node == NULL)
    {
        printf("the given previous node cannot be NULL");
        return;
    }

    struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));

    //put in the data
    new_node->data = new_data;

    //make next of new node as next of target_node
    new_node->next = target_node->next;

    //make the next of target_node  as new_node
    target_node->next = new_node;

    //make target_node  as previous of new_node
    new_node->prev = target_node;

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

void insertBefore(struct Node **head_ref, struct Node *next_node, int new_data)
{
    if (next_node == NULL)
    {
        printf("the given next node cannot be NULL");
        return;
    }

    struct Node *new_node = (struct Node *)malloc(sizeof(*new_node));

    new_node->data = new_data;

    //make the prev of next_node as new node
    new_node->prev = next_node->prev;

    //make prev of next_node as new node
    next_node->prev = new_node;

    //make next_node as next of new_node
    new_node->next = next_node;

    //change next of new_nodr's previous node
    if (new_node->prev != NULL)
        new_node->prev->next = new_node;
    //if the prev of new_node is NULL, it will be the new head node
    else
        (*head_ref) = new_node;
}

void deleteNode(struct Node **head_ref, int key)
{
    struct Node *target_node = *head_ref;

    if (target_node != NULL && target_node->data == key)
    {
        if (target_node->next != NULL)
        {
            *head_ref = target_node->next;
            target_node->next->prev = NULL;
            free(target_node);
        }
        else
        {
            *head_ref = NULL;
        }
        return;
    }

    while (target_node != NULL && target_node->data != key)
    {
        target_node = target_node->next;
    }

    if (target_node == NULL)
    {
        return;
    }

    if (target_node->next == NULL)
    {
        target_node->prev->next = NULL;
        free(target_node);
        return;
    }

    target_node->prev->next = target_node->next;
    target_node->next->prev = target_node->prev;

    free(target_node);
}