using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _4_ConversoesEOutrosTiposNumericos
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando projeto 4 ");

            double salario = 1200.50;

            // O int é um tipo de variavel que suporta valores até 32 bits
            int salarioEmInteiro = (int)salario;

            Console.WriteLine(salarioEmInteiro);

            // O long é uma variavel de 64 bits
            long idade; 
            idade = 1300000000000000000;
            Console.WriteLine(idade);

            // O short é um tipo de variavel de 16 bits
            short quantidadeProdutos;
            quantidadeProdutos = 15000;
            Console.WriteLine(quantidadeProdutos);
            
            float altura = 1.80f;

            Console.WriteLine(altura);

            double valor1 = 0.2;
            double valor2 = 0.1;
            double total = 0.2 + 0.1;

            float pontoFlutuante = 3.14f;
            


            Console.Write(total);

            Console.ReadLine();

        }
    }
}
