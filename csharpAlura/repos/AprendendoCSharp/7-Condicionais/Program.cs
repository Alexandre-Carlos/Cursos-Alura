using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _7_Condicionais
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Executando projeto 7 - Condicionais");

            int idadeJoao = 16;
            int quantidadePessoas = 2;

            if (idadeJoao >= 18)
            {
                Console.Write("Joao possui mais de 18 anos de idade. Pode entrar.");
            }
            else
            {
                if (quantidadePessoas >= 2)
                {
                    Console.WriteLine("João não possui mais de 18 anos, mas está acompanhado. Pode entrar.");
                }
                else 
                {
                    Console.WriteLine("João não possui mais de 18 anos, não pode entrar.");
                }
            }





           /* if (idadeJoao > 18 || quantidadePessoas >= 2)
            {

                Console.WriteLine("Idade do João maior que 18 anos ou está acompanhado. Pode entrar!");

            }
            else if (idadeJoao < 18)
            {
                Console.WriteLine("Idade do Joao menor que 18 anos");


            }
            else
            {
                Console.WriteLine("João tem " + idadeJoao);
            }
            */


            Console.ReadLine();

        }
    }
}
