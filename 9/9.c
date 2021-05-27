#include<stdio.h>
#include<ctype.h>

void FIRST(char);
int count,n = 0;
char prod[10][10],first[10];

main()
{
    int i,choice;
    char c,ch;
    printf("How many productions? :");
    scanf("%d",&count);
    printf("Enter %d production epsilon = $:\n\n",count);
    for(i=0;i<count;i++)
        scanf("%s%c",prod[i],&ch);
    do
    {
        n = 0;
        printf("Element: ");
        scanf("%c",&c);
        FIRST(c);
        printf("\n FIRST(%c) = { ",c);
        for(i=0;i<n;i++)
            printf("%c",first[i]);
            printf(" } \n");
        printf("Press 1 to continue: ");
        scanf("%d%c",&choice,&ch);
    }
    while(choice == 1);
}

//Created a recursive fuction

void FIRST(char c)
{
    int j;
    if(!(isupper(c)))first[n++] = c;
    for(j = 0;j<count;j++)
    {
        if(prod[j][0] == c)
        {
            if(prod[j][2] == '$')first[n++] = '$';
            else if(islower(prod[j][2]))first[n++] = prod[j][2];
            else FIRST(prod[j][2]);
        }
    }   
}