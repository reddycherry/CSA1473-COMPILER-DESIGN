%{
	int vow_count=0;
	int const_count =0;
%}

%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}
%%
int yywrap(){}
int main()
{
	FILE *f; 
char file[10]; 
printf("Enter C file Name : "); 
scanf("%s",file); 
f = fopen(file,"r"); 
yyin = f;
	yylex();
	printf("Number of consonants are: %d\n", const_count-vow_count);
	return 0;
}
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
