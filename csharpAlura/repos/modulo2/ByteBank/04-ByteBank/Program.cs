using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {

            ContaCorrente contaBruno = new ContaCorrente();

            contaBruno.titular = "Bruno";

            Console.WriteLine(contaBruno.saldo);

            if (contaBruno.Sacar(500))
            {
                Console.WriteLine("saque realizado com sucesso!");
            }
            else
            {
                Console.WriteLine("Saldo insuficiente!");
            }

            Console.WriteLine(contaBruno.saldo);

            contaBruno.Depositar(500);

            Console.WriteLine(contaBruno.saldo);


            ContaCorrente contaGabriela = new ContaCorrente();

            contaGabriela.titular = "Gabriela";

            Console.WriteLine("Saldo do Bruno: " + contaBruno.saldo);
            Console.WriteLine("Saldo da Gabriela: " + contaGabriela.saldo);

            contaBruno.Transferir(200, contaGabriela);

            Console.WriteLine("Saldo do Bruno: " + contaBruno.saldo);
            Console.WriteLine("Saldo da Gabriela: " + contaGabriela.saldo);

            contaGabriela.Transferir(100, contaBruno);

            Console.WriteLine("Saldo do Bruno: " + contaBruno.saldo);
            Console.WriteLine("Saldo da Gabriela: " + contaGabriela.saldo);

            Console.ReadLine();


        }
    }
}
