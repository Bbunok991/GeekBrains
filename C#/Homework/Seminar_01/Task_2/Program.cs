/* Напишите программу, которая на вход принимает два числа и выдаёт, какое число большее, а какое меньшее.
a = 5; b = 7 -> max = 7
a = 2 b = 10 -> max = 10
a = -9 b = -3 -> max = -3*/

System.Console.WriteLine("Enter the first number: ");
int FirstNumber = Convert.ToInt32(Console.ReadLine());

System.Console.WriteLine("Enter the second number: ");
int SecondNumber = Convert.ToInt32(Console.ReadLine());

if(FirstNumber > SecondNumber) System.Console.WriteLine($"The number {FirstNumber} is bigger then {SecondNumber}.");
else if(FirstNumber < SecondNumber) System.Console.WriteLine($"The number {SecondNumber} is bigger then {FirstNumber}.");
else System.Console.WriteLine("Error!");



