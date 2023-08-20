/*Напишите программу, которая на вход принимает число и выдаёт, является ли число чётным (делится ли оно на два без остатка).
4 -> да
-3 -> нет
7 -> нет*/

System.Console.WriteLine("Enter the number: ");
int Number = Convert.ToInt32(Console.ReadLine());

if(Number % 2 == 0) System.Console.WriteLine($"The number {Number} is even.");
else System.Console.WriteLine($"The number {Number} is odd.");

