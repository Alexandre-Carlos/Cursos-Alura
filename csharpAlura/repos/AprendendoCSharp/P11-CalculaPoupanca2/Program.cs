using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P11_CalculaPoupanca2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando o projeto 11");

            double valorInvestido = 1000;

            for (int x =1; x<= 12; x++)
            {
                //valorInvestido = valorInvestido + (valorInvestido * (0.36 / 100));
                valorInvestido *= 1.0036;

                Console.WriteLine("Após " + x + " mês, você terá R$" + valorInvestido);
            }

            Console.ReadLine();

        }
    }
}
