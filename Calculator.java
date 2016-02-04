// Calculator.java
import java.util.Scanner;

public class Calculator{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		double a = 10;
		double b = 5;
		char operator = '+';

		System.out.println("Zahl1 eingeben: ");
		a= sc.nextDouble();
		System.out.println("Zahl2 eingeben: ");
		b = sc.nextDouble();
		System.out.println("Operator eingeben: ");
		operator = sc.next().charAt(0);
		
		switch(operator){
			case '+':
				System.out.println("Resultat: "+(a+b));
				break;
			case '-':
				System.out.println("Resultat: "+(a-b));
				break;
			case '*':
				System.out.println("Resultat: "+(a*b));
				break;
			case '/':
				System.out.println("Resultat: "+(a/b));
				break;
			default:
				System.out.println("Error!");
				break;
		
		}

	}
}
