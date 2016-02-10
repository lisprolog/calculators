// Program.cs: C# Calculator written in Visual Studio 2010 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Calculator
{
    class Program
    {
        double add(double x, double y) 
        { 
            return x + y;
        }

        double sub(double x, double y)
        {
            return x - y;
        }

        double mul(double x, double y) 
        {
            return x * y;
        }

        double div(double x, double y) 
        {
            return x / y;
        }


        static void Main(string[] args)
        {
            Program p1 = new Program();

            String operation;

            double zahl1;
            double zahl2;

            Console.WriteLine("Bitte Zahl1 eingeben:");
            zahl1 = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Bitte Zahl2 eingeben:");
            zahl2 = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Bitte Operator eingeben: ");
            operation = Console.ReadLine();

            switch(operation)
            {
                case "+":
                    Console.WriteLine(p1.add(zahl1, zahl2));
                    break;
                case "-":
                    Console.WriteLine(p1.sub(zahl1, zahl2));
                    break;
                case "*":
                    Console.WriteLine(p1.mul(zahl1, zahl2));
                    break;
                case "/":
                    Console.WriteLine(p1.div(zahl1, zahl2));
                    break;
                default:
                    Console.WriteLine("INPUT: Zahl1 <Enter> Zahl2 <Enter> Operator(+ - * /)<Enter> !");
                    Console.WriteLine("INPUT: 6 3 +");
                    Console.WriteLine("INPUT: 6 3 -");
                    Console.WriteLine("INPUT: 6 3 *");
                    Console.WriteLine("INPUT: 6 3 /");
                    break;
            }
            Console.ReadLine();
        }
    }
}