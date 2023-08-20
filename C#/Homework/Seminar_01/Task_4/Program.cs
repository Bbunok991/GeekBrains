/*Напишите программу, которая принимает на вход три числа и выдаёт максимальное из этих чисел.
2, 3, 7 -> 7
44 5 78 -> 78
22 3 9 -> 22*/

System.Console.WriteLine("Enter the first number: ");
int FirstNumber = Convert.ToInt32(Console.ReadLine());

System.Console.WriteLine("Enter the second number: ");
int SecondNumber = Convert.ToInt32(Console.ReadLine());

System.Console.WriteLine("Enter the third number: ");
int ThirdNumber = Convert.ToInt32(Console.ReadLine());

if(FirstNumber > SecondNumber && FirstNumber > ThirdNumber) System.Console.WriteLine($"The number {FirstNumber} is biggest number.");
else if(SecondNumber > FirstNumber && SecondNumber > ThirdNumber) System.Console.WriteLine($"The number {SecondNumber} is biggest number.");
else if(ThirdNumber > FirstNumber && ThirdNumber >SecondNumber) System.Console.WriteLine($"The number {ThirdNumber} is biggest number.");
else System.Console.WriteLine("Error!");









