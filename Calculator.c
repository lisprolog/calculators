// calculator.c

#include<stdio.h>
#include<ctype.h>

main(){
	
	float a,b,result;
	char operator;

	printf("Bitte Zahl 1 eingeben: ");
	scanf("%f", &a);
	printf("Bitte Zahl 2 eingeben: ");
	scanf("%f", &b);
	printf("Bitte Operator eingeben: ");
	scanf("%c", &operator);
	operator = getchar();

	switch(operator){
		case '+':
			printf("\nResultat: %.2f\n", a+b);
			break;
		case '-':
			printf("\nResultat: %.2f\n", a-b);
			break;
		case '*':
			printf("\nResultat: %.2f\n", a*b);
			break;
		case '/':
			printf("\nResultat: %.2f\n", a/b);
			break;
		default:
			printf("\nFehler, bitte starten sie neu!\n");
			break;
	}
}
