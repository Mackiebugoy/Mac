#include<stdio.h>

void StudentAge() {
    int a;
    
    printf("Enter the number of students: ");
    scanf("%d", &a);
    
    int age[a];
    
    for(int i = 0; i < a; i++) {
        printf("Student %d: \n", i + 1);
        printf("Enter age: ");
        scanf("%d", &age[i]);
    }
    
    printf("\nAge of student: \n");
    for(int i = 0; i < a; i++) {
        printf("Student %d age: %d\n", i + 1, age[i]);
    }
}

int main() {
    StudentAge();
    return 0;   
} 
