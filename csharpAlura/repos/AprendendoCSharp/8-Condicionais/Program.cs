using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _8_Condicionais
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Executando projeto 8 - Condicionais");

            int idadeJoao = 16;
            //int quantidadePessoas = 2;
            //bool acompanhado = quantidadePessoas >= 2;

            bool acompanhado = true;

            if (idadeJoao >= 18 && acompanhado == true)
            {
                Console.Write("Pode entrar.");
            }
            else
            {
               Console.WriteLine("Não pode entrar.");
            }

            Console.ReadLine();


        }
    }
}
