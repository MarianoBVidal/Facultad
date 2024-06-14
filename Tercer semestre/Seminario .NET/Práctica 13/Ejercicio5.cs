using teoria13;

class Program
{
    static void Main(string[] args)
    {
        Task[] vectorTareas = new Task[1000];
        for (int i = 0; i < 1000; i++)
            vectorTareas[i] = Task.Factory.StartNew(obj => Imprimir(obj), i);
        Task.WaitAll(vectorTareas);
    }
    
    //Métodos
    static void Imprimir(object o)
    {
        Console.Write($"{o} - ");
    }
}
