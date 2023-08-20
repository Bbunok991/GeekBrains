/*Пользователь вводит с клавиатуры M чисел. Посчитайте, сколько чисел больше 0 ввёл пользователь.
0, 7, 8, -2, -2 -> 2
1, -7, 567, 89, 223-> 3*/
void Main()
{
    int quantity = InPut("Enter the number: "); // Количество чисел всего.
    int numbers = Numbers(quantity); // Получение результата функции "Numbers" в переменную "numbers".
    System.Console.WriteLine(numbers); // Вывод количества чисел больше 0.
}
int InPut(string text) //Функция для ввода числа.
{
    System.Console.Write(text);
    return Convert.ToInt32(Console.ReadLine());
}

int Numbers(int quantity) // Функция для заполнения массива и определения количества четных чисел в массиве.
{
    int sum = 0; //Количество чисел больше 0.
    for(int i = 0; i < quantity; i++) // Цикл для ввода чисел и заполнения переменной "sum".
    {
        System.Console.Write("Enter the number: ");
        int number = Convert.ToInt32(Console.ReadLine());
        if(number > 0) sum++; //Проверка условия.
    }
    return sum; // Возвращение количества чисел больше 0.

}

Main(); //Вызов функции "Main".
