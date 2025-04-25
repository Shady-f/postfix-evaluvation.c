#include <stdio.h>
#include <stdlib.h>

struct node {
int data;
struct node *next;
};

struct node *head = NULL;

void insert_begin() {
struct node *newnode = (struct node *)malloc(sizeof(struct node));
printf("Enter data: ");
scanf("%d", &newnode->data);
newnode->next = head;
head = newnode;
printf("Inserted at beginning.\n");
}

void insert_end() {
struct node *newnode = (struct node *)malloc(sizeof(struct node));
printf("Enter data: ");
scanf("%d", &newnode->data);
newnode->next = NULL;
if (head == NULL) {
head = newnode;
} else {
struct node *temp = head;
while (temp->next != NULL) {
temp = temp->next;
}
temp->next = newnode;
}
printf("Inserted at end.\n");
}

void delete_begin() {
if (head == NULL) {
printf("List is empty.\n");
} else {
struct node *temp = head;
head = head->next;
free(temp);
printf("Deleted from beginning.\n");
}
}

void delete_end() {
if (head == NULL) {
printf("List is empty.\n");
} else if (head->next == NULL) {
free(head);
head = NULL;
printf("Deleted last node.\n");
} else {
struct node *temp = head;
struct node *prev;
while (temp->next != NULL) {
prev = temp;
temp = temp->next;
}
prev->next = NULL;
free(temp);
printf("Deleted from end.\n");
}
}

void display() {
struct node *temp = head;
if (temp == NULL) {
printf("List is empty.\n");
} else {
printf("List: ");
while (temp != NULL) {
printf("%d -> ", temp->data);
temp = temp->next;
}
printf("NULL\n");
}
}

int main() {
int choice;
do {
printf("\n1. Insert at Beginning\n");
printf("2. Insert at End\n");
printf("3. Delete from Beginning\n");
printf("4. Delete from End\n");
printf("5. Display\n");
printf("6. Exit\n");
printf("Choice: ");
scanf("%d", &choice);

if (choice == 1) insert_begin();
else if (choice == 2) insert_end();
else if (choice == 3) delete_begin();
else if (choice == 4) delete_end();
else if (choice == 5) display();
else if (choice == 6) printf("Exiting...\n");
else printf("Invalid choice.\n");

} while (choice != 6);

return 0;
}