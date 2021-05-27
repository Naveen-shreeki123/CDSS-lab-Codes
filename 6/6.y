%{
    #include<stdio.h>
%}
%token A B
%%
str: s'\n' {return 1;}
s: A s B
| ;
%%
main()
{
    printf("Type a string (a^nb^n)\n");
    if(yyparse())
        printf("Valid string\n");
}
yyerror()
{
    printf("Invalid string\n");
    exit(0);
}