/*Напишите программу, которая принимает на вход цифру, обозначающую день недели, и проверяет, является ли этот день выходным.
6 -> да
7 -> да
1 -> нет*/

using System;
int Input(string message)
{
    Console.Write(message);
    int number = Convert.ToInt32(Console.ReadLine());
    return number;
}
int number = Input("Enter a digit: ");


if(number == 6 || number == 7) Console.WriteLine("This day is a day off.");
else if(number > 0 && number <= 5) Console.WriteLine("This day is a weekday.");
else Console.WriteLine("It's not a day of the week");
