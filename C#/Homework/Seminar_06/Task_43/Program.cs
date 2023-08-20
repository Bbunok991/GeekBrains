/*Напишите программу, которая найдёт точку пересечения двух прямых, заданных уравнениями y = k1 * x + b1, y = k2 * x + b2; значения b1, k1, b2 и k2 задаются пользователем.*/

void Main()
{
    int b1 = InPut("Enter the b1: "); //Ввод значения b1
    int k1 = InPut("Enter the k1: "); //Ввод значения k1
    int b2 = InPut("Enter the b2: "); //Ввод значения b2
    int k2 = InPut("Enter the k2: "); //Ввод значения k2
    string directs = Directs(k1, b1, k2, b2); // Получение результата функции "Directs" в переменную "directs".
    System.Console.WriteLine(directs); // Вывод количества значений b1, k1, b2 и k2.
}
int InPut(string text) //Функция для ввода числа.
{
    System.Console.Write(text);
    return Convert.ToInt32(Console.ReadLine());
}

string Directs(int k1, int b1, int k2, int b2) // Функция, которая найдёт точку пересечения двух прямых, заданных уравнениями y = k1 * x + b1, y = k2 * x + b2
{
    int[] Y1 = new int[2] {k1, b1};
    int[] Y2 = new int[2] {k2, b2};

    double first_direct = (double) (-1 *(Y1[1] - Y2[1])) / (Y1[0] - Y2[0]);
    double second_direct = (double) (Y2[0] * first_direct + Y2[1]);
    
    string str = $"({first_direct};{second_direct})";

    return str;
}

Main(); //Вызов функции "Main".