using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestaEscopo
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Projeto Testa Escopo");

            double salario = 4800;

            if (salario >= 1900.0 && salario <= 2800.0)
            {
                Console.WriteLine("O IR é de 7,5% e pode deduzir R$ 142");
            }

            else if (salario >= 2800.01 && salario <= 3751.0)
            {
                Console.WriteLine("O IR é de 15% e pode deduzir R$ 350");
            }

            else if (salario >= 3751.01 && salario <= 4664.00)
            {
                Console.WriteLine("O IR é de 22,5% e pode deduzir R$ 636");
            }
            else
                Console.WriteLine("O IR é de 22,5%, calcular dedução");


            Console.ReadLine();


        }
    }
}
