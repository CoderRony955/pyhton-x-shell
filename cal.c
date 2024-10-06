#include <stdio.h>
#include <string.h>

int addition();
int substraction();
int multiplication();
int divison();

int main(int argc, char const *argv[])
{
    char method[10];

    printf("Choose one of the follwing method for calculation\n \"add\", \"sub\", \"mul\", \"div\" \n:");
    scanf("%s", &method);

    if (strcmp(method, "add") == 0)
    {
        addition();
    }
    else if (strcmp(method, "sub") == 0)
    {
        substraction();
    }
    else if (strcmp(method, "mul") == 0)
    {
        multiplication();
    }
    else if (strcmp(method, "div") == 0)
    {
        divison();
    }
    else
    {
        printf("Invalid method");
    }

    return 0;
}

int addition()
{
    int a, b;
    printf("Enter the first number: ");
    scanf("%d", &a);

    printf("Enter the second number here: ");
    scanf("%d", &b);

    printf("The addition of two numbers are: %d", a + b);
}

int substraction()
{
    int a, b;
    printf("Enter the first number: ");
    scanf("%d", &a);

    printf("Enter the second number here: ");
    scanf("%d", &b);

    printf("The substraction of two numbers are: %d", a - b);
}

int multiplication()
{
    int a, b;
    printf("Enter the first number: ");
    scanf("%d", &a);

    printf("Enter the second number here: ");
    scanf("%d", &b);

    printf("The multiplication of two numbers are: %d", a * b);
}

int divison()
{
    int a, b;
    printf("Enter the first number: ");
    scanf("%d", &a);

    printf("Enter the second number here: ");
    scanf("%d", &b);

    printf("The division of two numbers are: %d", a / b);
}
