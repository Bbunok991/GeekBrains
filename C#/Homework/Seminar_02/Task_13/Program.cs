/*Напишите программу, которая выводит третью цифру заданного числа или сообщает, что третьей цифры нет.
645 -> 5
78 -> третьей цифры нет
32679 -> 6*/

using System;
int Input(string message)
{
    Console.Write(message);
    int output = Convert.ToInt32(Console.ReadLine());
    return output;
}
int number = Input("Enter a number: ");

int GetThirdDigit(string message)
{
    System.Console.Write(message);

    while(number > 999)
    {
        number = number / 10;
    }
    return number % 10;
}
bool CheckingTheNumber(int number)
{
    if(number < 100)
    {
        System.Console.WriteLine("You did not enter a three-digit number! Please repeat the input.");
        return false;
    }
    return true;
}
if (CheckingTheNumber (number))
{
    int result = GetThirdDigit("The third digit is: ");
    System.Console.WriteLine(result);
}









