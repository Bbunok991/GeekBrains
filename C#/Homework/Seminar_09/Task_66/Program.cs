/*Задача 66: Задайте значения M и N. Напишите программу, которая найдёт сумму натуральных элементов в промежутке от M до N.
M = 1; N = 15 -> 120
M = 4; N = 8. -> 30*/

int InPut(string text)
{
    System.Console.Write(text);
    return Convert.ToInt32(System.Console.ReadLine());
}

int Sum(int M, int N)
{
    if(M == N) return N;
    return M + Sum(M + 1, N);
}
int M = InPut("Enter the M: ");
int N = InPut("Enter the N: ");
int sum = Sum(M, N);
System.Console.WriteLine(sum);