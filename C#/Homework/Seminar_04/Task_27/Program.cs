/*Напишите программу, которая принимает на вход число и выдаёт сумму цифр в числе.
452 -> 11
82 -> 10
9012 -> 12*/

string InPut(string message)
{
    System.Console.WriteLine(message);
    string number = Console.ReadLine()!;
    return number;
}

string number = InPut("Enter the number: ");

int Sum(string str)
{
    int sum = 0;
    int convert;
    for(int i = 0; i < number.Length; i++)
    {
        str = Convert.ToString(number[i]);
        convert = Convert.ToInt32(str);
        sum += convert;
        
    }
    return sum;
}
System.Console.WriteLine(Sum(number));



