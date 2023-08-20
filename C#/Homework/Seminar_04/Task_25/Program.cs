/*Напишите цикл, который принимает на вход два числа (A и B) и возводит число A в натуральную степень B.
3, 5 -> 243 (3⁵)
2, 4 -> 16*/

int InPut(string message)
{
    System.Console.WriteLine(message);
    int number = Convert.ToInt32(Console.ReadLine());
    return number;
}
int number0 = InPut("Enter the first number: ");
int number1 = InPut("Enter the second number: ");

int Sum(int result)
{

    for(int i = 1; i < number1; i++)
    {
        result *= number0;
    }
    return result;
}
System.Console.WriteLine(Sum(number0));








