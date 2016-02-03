// Calculator.cpp

#include<iostream>
using namespace std;

int main(){
	cout << "\nZahl1 eingeben: ";
	double zahl1;
	cin >> zahl1;
	cout << "\nZahl2 eingeben: ";
	double zahl2;
	cin >> zahl2;
	cout << "\nOperator('+' '-' '*' oder '/') eingeben: ";
	char operation;
	cin >> operation;
	switch(operation){
		case '+':
			cout << "\nResultat: " << zahl1 + zahl2 << "\n";
			break;
		case '-':
			cout << "\nResultat: " << zahl1 - zahl2 << "\n";
			break;
		case '*':
			cout << "\nResultat: " << zahl1 * zahl2 << "\n";
			break;
		case '/':
			cout << "\nResultat: " << zahl1 / zahl2 << "\n";
			break;
		default:
			cout << "\nError!\n";
	}
}
