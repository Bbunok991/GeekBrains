/*Напишите программу, которая принимает на вход число (N) и выдаёт таблицу кубов чисел от 1 до N.
3 -> 1, 8, 27
5 -> 1, 8, 27, 64, 125*/

int InPut()
{
    Random rand = new Random();
    int random = rand.Next(0, 10);
    System.Console.Write($"{random} -> ");
    return random;
}
int random = InPut();
double number;
string str = ",";
void Number()
{
    for(int i = 1; i <= random; i++)
    {
    if(i == random)
    {
        str = "";
    }
    number = Math.Pow(i, random);
    System.Console.Write($"{number}{str} ");
    }
}
Number();










