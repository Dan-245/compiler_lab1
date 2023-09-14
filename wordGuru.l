/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count_s = 0;
int count_c = 0;
int count_n = 0;
int count_p = 0;
int count_w = 0;
%}
 
/*** Rule Section has seven rules, first rule
matches with small letters, second rule
matches with capital letters, third rule
matches with digits, fourth rule
matches with punctuation marks, fifth rule
matches with whitespaces, sixth rule
matches with any character except newline and
seventh rule does not take input after the enter***/
%%
[a-z] {printf("%s is a small letter\n", yytext);
       count_s++;}
[A-Z] {printf("%s is a capital letter\n", yytext);
       count_c++;}
[0-9] {printf("%s is a digit\n", yytext);
       count_n++;}
[.,?!''""] {printf("%s is a punctuation mark\n", yytext);
       count_p++;}
[ ] {printf("%s is a whitespace\n", yytext);
       count_w++;}
.     {printf("%s is an undefined character\n", yytext);}
\n    {return 0;}
%%

/*** Code Section prints according to the given input***/
int yywrap(){}
int main(){
 
// Explanation:
// yywrap() - wraps the above rule section
/* yyin - takes the file pointer
          which contains the input*/
/* yylex() - this is the main flex function
          which runs the Rule Section*/
// yytext is the text in the buffer
 
// Uncomment the lines below
// to take input from file
// FILE *fp;
// char filename[50];
// printf("Enter the filename: \n");
// scanf("%s",filename);
// fp = fopen(filename,"r");
// yyin = fp;
 
yylex();
printf("\nNumber of Small letters "
      "in the given input - %d\n", count_s);
printf("\nNumber of Captial letters "
      "in the given input - %d\n", count_c);
printf("\nNumber of Digits "
      "in the given input - %d\n", count_n);
printf("\nNumber of Punctuation Marks "
      "in the given input - %d\n", count_p);
printf("\nNumber of Whitespaces "
      "in the given input - %d\n", count_w);
return 0;
}
