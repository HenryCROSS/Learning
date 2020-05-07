#include <stdio.h>

struct Node
{
    int data;
    struct Node* next;
};

void printList(struct Node* n);

/* Given a reference (pointer to pointer) to the head of a list 
   and an int,  inserts a new node on the front of the list. */
void push(struct Node** head_ref, int new_data);

/* Given a node prev_node, insert a new node after the given 
   prev_node */
void insertAfter(struct Node* prev_node, int new_data);

/* Given a reference (pointer to pointer) to the head 
   of a list and an int, appends a new node at the end  */
void append(struct Node** head_ref, int new_data);

/* Given a reference (pointer to pointer) to the head of a list 
   and a key, deletes the first occurrence of key in linked list */
void deleteNode(struct Node** head_ref, int key);

/**
 * output the number of nodes
 **/
int nodeCounter(struct Node* head_ref);

/**
 * swap 2 node which has indicate the value
 **/
void swapNodes(struct Node** head_ref, int x, int y);
