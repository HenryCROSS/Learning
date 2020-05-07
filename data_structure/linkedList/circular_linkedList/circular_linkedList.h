#include <stdio.h>

struct Node
{
    int data;
    struct Node *next;
};

void printList(struct Node *first);

void push (struct Node **head_ref, int data);

/* Given a node as prev_node, insert a new node after the given node */
void insertAfter(struct Node* prev_node, int new_data);

/* Given a reference (pointer to pointer) to the head 
   of a DLL and an int, appends a new node at the end */
void append(struct Node** head_ref, int new_data);

/* Given a node as next_node, insert a new node before the given node */
void insertBefore (struct Node** head_ref, struct Node* next_node, int new_data);

/* Given a reference (pointer to pointer) to the head of a list 
   and a key, deletes the first occurrence of key in linked list */
void deleteNode(struct Node** head_ref, int key);

//reverting the linked list
void reverseList(struct Node** head);