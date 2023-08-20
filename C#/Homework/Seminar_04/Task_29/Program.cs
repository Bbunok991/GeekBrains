/*Напишите программу, которая задаёт массив из 8 элементов и выводит их на экран.
1, 2, 5, 7, 19 -> [1, 2, 5, 7, 19]
6, 1, 33 -> [6, 1, 33]*/

int InPut(string text)
{
    System.Console.Write(text);
    return Convert.ToInt32(Console.ReadLine());
}
int size = InPut("Enter the lenght of the array: ");
int left = InPut("Enter the left side: ");
int right = InPut("Enter the right side: ");

int[] Array(int size, int left, int right)
{
    Random rand = new Random();
    int[] array = new int[size];

    for(int i = 0; i < array.Length; i++)
    {
        array[i] = rand.Next(left, right);
    }
    return array;

}
int[] array = Array(size, left, right+1);
System.Console.Write("[" + string.Join(", ", array) + "]");
