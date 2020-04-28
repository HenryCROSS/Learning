#include <stdio.h>
#include <stdlib.h>
#include "linkedList.h"

int main(void)
{
    struct Node* head = NULL;
    // struct Node* second = NULL;
    // struct Node* third = NULL;

    // //allocate 3 nodes in the heap
    // head = (struct Node*)malloc(sizeof(struct Node));
    // second = (struct Node*)malloc(sizeof(struct Node));
    // third = (struct Node*)malloc(sizeof(struct Node));

    // head->data = 1; //assign data in first node
    // head->next = second; //Link first node with the second node

    // //assign data to second node
    // second->data = 2;

    // //Link second node with the third node
    // second->next = third;

    // third->data = 3;
    // third->next = NULL;

    append(&head, 6);
    printf("\n Created Linked list is: ");
    printList(head);

    push(&head, 7);
    printf("\n Created Linked list is: ");
    printList(head);
    
    push(&head, 1);
    printf("\n Created Linked list is: ");
    printList(head);

    append(&head, 4);
    printf("\n Created Linked list is: ");
    printList(head);

    insertAfter(head->next->next, 8);
    printf("\n Created Linked list is: ");
    printList(head);

    deleteNode(&head, 6);
    printf("\n Created Linked list is: ");
    printList(head);

    deleteNode(&head, 4);
    printf("\n Created Linked list is: ");
    printList(head);

    return 0;
}

void printList(struct Node* n)
{
    while (n != NULL)
    {
        printf("%d ", n->data);
        n = n->next;
    }
    
}

void push(struct Node** head_ref, int new_data)
{
    // allocate node
    struct Node* new_node = (struct Node*) malloc(sizeof(struct Node));

    //put in the data
    new_node->data = new_data;

    //make next of new node as head
    new_node->next = *head_ref;

    //move the head to point to the new node
    *head_ref = new_node;
}

void insertAfter(struct Node* prev_node, int new_data)
{
    //check if the given prev_node is NULL
    if (prev_node == NULL)
    {
        printf("the given previous node cannot be NULL");        
        return;
    }

    //allocate new node
    struct Node* new_node =(struct Node*) malloc(sizeof(struct Node));

    //put in the data
    new_node->data = new_data;

    //make next of new node as next of prev_node
    new_node->next = prev_node->next;

    //move the next of prev_node as new_node
    prev_node->next = new_node;
}

void append(struct Node** head_ref, int new_data)
{
    //1.allocate node
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));

    //the pointer could be modified in that way, otherwise nothing will be append
    struct Node* last = *head_ref;//used in step 5

    //2. put in the data
    new_node->data = new_data;

    /* 3.This new node is going to be the last node, so make next  
    of it as NULL*/
    new_node->next = NULL;

    //4.If the Linked List is empty, then make the new node as head
    if(*head_ref == NULL)
    {
        *head_ref = new_node;
        return;
    }

    //5.else traverse till the last node
    while(last->next != NULL)
    {
        last = last->next;
    }

    //6.Change the next of last node
    last->next = new_node;//append the new node to the linked list
    return;
}

void deleteNode(struct Node** head_ref, int key)
{
    //Store head node, could avoid the head position be modified
    struct Node *temp = *head_ref, *prev;

    if(temp != NULL && temp->data == key)
    {
        *head_ref = temp->next; //changed head
        free(temp); //free old head
        return;
    }

    // Search for the key to be deleted, keep track of the 
    // previous node as we need to change 'prev->next' 
    while (temp != NULL && temp->data != key)
    {
        prev = temp;
        temp = temp->next;
    }

    //If key was not present in linked list
    if(temp == NULL)
        return;

    //Unlink the node from linked list
    prev->next = temp->next;

    free(temp); // free memory
}