/*Напишите программу, которая принимает на вход трёхзначное число и на выходе показывает вторую цифру этого числа.
456 -> 5
782 -> 8
918 -> 1*/
using System;
int Input(string message)
{
    Console.Write(message);
    int output = Convert.ToInt32(Console.ReadLine());
    return output;
}
int number = Input("Enter a three-digit number: ");

if (number < 100 || number >= 1000) System.Console.WriteLine("You did not enter a three-digit number! Please repeat the input.");
else
{
    int result = (number % 100) /10;
    Console.WriteLine($"The second digit of the number {number}: {result}");
}












