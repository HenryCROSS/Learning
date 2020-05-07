#include <stdio.h>
#include <stdlib.h>
#include "circular_linkedList.h"

int main(void)
{
    struct Node *head = NULL;

    push(&head, 12);
    push(&head, 56);
    push(&head, 2);
    push(&head, 11);

    printf("Contents of Circular Linked List\n ");
    printList(head);

    insertAfter(head->next->next, 21);

    printf("\nContents of Circular Linked List\n ");
    printList(head);

    append(&head, 20);
    append(&head, 202);
    printf("\nContents of Circular Linked List\n ");
    printList(head);

    insertBefore(&head, head, 100);
    printf("\nContents of Circular Linked List\n ");
    printList(head);

    deleteNode(&head, 202);
    printf("\nContents of Circular Linked List\n ");
    printList(head);

    // deleteNode(&head, 100);
    // printf("\nContents of Circular Linked List\n ");
    // printList(head);

    reverseList(&head);
    printf("\nContents of Circular Linked List\n ");
    printList(head);

    reverseList(&head);
    printf("\nContents of Circular Linked List\n ");
    printList(head);

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

void push(struct Node **head_ref, int data)
{
    struct Node *ptr1 = malloc(sizeof(*ptr1));
    struct Node *temp = *head_ref;
    ptr1->data = data;
    ptr1->next = *head_ref;

    //if linked list is not NULL then set the next of last node
    if (*head_ref != NULL)
    {
        while (temp->next != *head_ref)
        {
            temp = temp->next;
        }
        temp->next = ptr1; // the last node connect to the first node
    }
    else
    {
        ptr1->next = ptr1; //for the first node
    }

    *head_ref = ptr1;
}

void insertAfter(struct Node *prev_node, int new_data)
{
    if (prev_node == NULL)
    {
        printf("the given previous node cannot be NULL");
        return;
    }

    struct Node *insertedNode = malloc(sizeof(*insertedNode));

    insertedNode->data = new_data;

    insertedNode->next = prev_node->next;

    prev_node->next = insertedNode;
}

void append(struct Node **head_ref, int new_data)
{
    struct Node *new_node = malloc(sizeof(*new_node));
    struct Node *last_node = *head_ref;

    new_node->data = new_data;
    new_node->next = *head_ref;

    //if it is the first node, only 1 node
    if (*head_ref == NULL)
    {
        new_node->next = new_node;
        (*head_ref) = new_node;
        return;
    }

    //search for the last node
    while (last_node->next != *head_ref)
    {
        last_node = last_node->next;
    }

    //append the new node after the last node
    last_node->next = new_node;
    return;
}

void insertBefore(struct Node **head_ref, struct Node *next_node, int new_data)
{
    //if it is null
    if (next_node == NULL)
    {
        printf("the given next node cannot be NULL");
        return;
    }

    struct Node *new_node = malloc(sizeof(*new_node));
    struct Node *node = *head_ref;

    new_node->data = new_data;

    //search for the node before the next_node
    while (node->next != next_node)
    {
        node = node->next;
    }

    //add the node before it
    node->next = new_node;
    new_node->next = next_node;
}

void deleteNode(struct Node **head_ref, int key)
{
    if ((*head_ref) == NULL)
    {
        return;
    }
    
    //only 1 node
    if ((*head_ref)->next == (*head_ref) && (*head_ref)->data == key)
    {
        *head_ref = NULL;
        (*head_ref)->next = (*head_ref);
        return;
    }

    struct Node *deleteNode = *head_ref, *prev_node;

    //if it is the first node
    if (deleteNode->data == key)
    {
        prev_node = *head_ref;
        while (prev_node->next != *head_ref)
        {
            prev_node = prev_node->next;
        }
        
        (*head_ref) = deleteNode->next;
        prev_node->next = (*head_ref);
        free(deleteNode);
        return;
    }

    //search for the target
    while (deleteNode->next != (*head_ref) && deleteNode->data != key)
    {
        prev_node = deleteNode;
        deleteNode = deleteNode->next;
    }

    //target not exist
    if (deleteNode == (*head_ref) && deleteNode->data != key)
    {
        return;
    }

    //delete node
    prev_node->next = deleteNode->next;
    free(deleteNode);
}

void reverseList(struct Node** head)
{
    if(*head == NULL)
    {
        printf("Cannot reverse empty list.\n");
        return;
    }
    
    //temporary helper variables
    struct Node *prev, *cur, *last;

    //head is going to be our last node after reversing list
    last = *head;

    prev = *head;
    cur = (*head)->next;
    *head = (*head)->next;

    //Iterate till you reach the initial nodein circular list
    while (*head != last)
    {
        *head = (*head)->next;//move forward
        cur->next = prev;//change the linked direction

        prev = cur;//change the location of the pointer to next node
        cur = *head;//move forward
    }
    
    cur->next = prev;
    *head = prev; //make last node as head
}