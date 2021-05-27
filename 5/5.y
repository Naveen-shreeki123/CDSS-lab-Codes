%{
    #include<stdio.h>
%}
%token L D
%%
s : id {return 1;}
id : l n
    | l {;}
;
n : l n
    | d n
    | l
    | d {;}
;
l : L {;}
;
d : D {;}
;
%%

void main()
{
    printf("Type the variable\n");
    if(yyparse())
        printf("Valid");
}
    yyerror()
{
    printf("Invalid variable !!!\n");
    exit(0);
}
