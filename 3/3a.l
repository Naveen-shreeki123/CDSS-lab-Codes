%{
    int p = 0;
    int n = 0;
    int pf = 0;
    int nf = 0;
%}
digit[0-9]
%%
\+?{digit}+ p++;
-{digit}+ n++;
\+?{digit}*\.{digit}+ pf++;
-{digit}*\.{digit}+ nf++;
.;
%%
int main()
{
    yylex();
    printf("\n No of positive numbers are: %d",p);
    printf("\n No of negative numbers are: %d",n);
    printf("\n No of positive fraction are: %d",pf);
    printf("\n No of negative fractions are: %d\n",nf);
    return 0;
}