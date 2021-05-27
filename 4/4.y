%{
#include<stdio.h>
%}
%token NUM
%left '+''-'
%left '*''/'
%%
expr: e { printf("Result:%d\n",$1); return 0;}
e: e'+'e {$$=$1+$3;}
| e'-'e {$$=$1-$3;}
| e'*'e {$$=$1*$3;}
| e'/'e {$$=$1/$3;}
| '('e')' {$$=$2;}
| NUM {$$=$1;};
%%
main()
{
printf("Enter the expression\n"); yyparse();
printf("Valid expression \n");
print("\n");
}
yyerror()
{ 
printf("Invalid expression !!!!\n");
print("\n");
exit(0);
}
