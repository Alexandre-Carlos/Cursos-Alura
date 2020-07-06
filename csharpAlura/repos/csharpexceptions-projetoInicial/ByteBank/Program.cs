using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank
{
    public class Program
    {
        static void Main(string[] args)
        {

            try
            {
                CarregarContas();

            }
            catch (Exception)
            {
                Console.WriteLine("Catch no metodo main");
            }







            Console.WriteLine("Execução finalizada. Tecle enter para sair!");
            Console.ReadLine();








            /*
            try
            {
                ContaCorrente conta = new ContaCorrente(565, 565252);
                ContaCorrente conta2 = new ContaCorrente(7480, 874150);

                conta2.Transferir(10000, conta);

                conta.Depositar(50);
                Console.WriteLine(conta.Saldo);
                conta.Sacar(-500);
            }
            catch (ArgumentException ex)
            {
                if(ex.ParamName == "numero")
                {
                    Console.WriteLine("problema com o numero da agencia");
                }
                        Console.WriteLine("Ocorreu uma exceção do tipo ArgumentException." + ex.ParamName);
                        Console.WriteLine(ex.Message);
            }
            catch (SaldoInsuficienteException ex)
            {
                Console.WriteLine(ex.Saldo);
                Console.WriteLine(ex.ValorSaque);

                Console.WriteLine(ex.StackTrace);
                Console.WriteLine(ex.Message);
                Console.WriteLine("Exceção do tipo SaldoInsuficienteException");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                //Console.WriteLine(ex.StackTrace);
                //Console.WriteLine("Aconteceu um erro");
            }


            //Metodo();
        }
        public static int Dividir(int numero, int divisor)
        {
            try
            {
                return numero / divisor;
            }
            catch(DivideByZeroException)
            {
                Console.WriteLine("Exceção com numero= " + numero + " e dividor= " + divisor);
                throw; //passa adiante um excessão
            }
        }

        static void Metodo() 
        {
            TestaDivisao(0);
        }

        static void TestaDivisao(int divisor)
        {
           
                int resultado = Dividir(10, divisor);
                Console.WriteLine("Resultado da divisão de 10 por " + divisor + " é " + resultado);
                     
        }

    */




        }

        private static void CarregarContas()
        {
            using (LeitorDeArquivos leitor = new LeitorDeArquivos("teste.txt")) // bloco using substitui try/catch/finally - é executado ao final o dispose
            {
                leitor.LerProximaLinha();
            }






            //------------------------------------
            //LeitorDeArquivos leitor = null;


            //try
            //{
            //    leitor = new LeitorDeArquivos("contas.txt");

            //    leitor.LerProximaLinha();
            //    leitor.LerProximaLinha();
            //    leitor.LerProximaLinha();


            //}
            //catch (IOException)
            //{
            //    Console.WriteLine("Exceção do tipo IOException capturada e tratada!");

            //}
            //finally
            //{
            //    if (leitor != null)
            //        leitor.Fechar();

            //}

        }



        private static void TestaInnerException()
        {
            //Console.WriteLine(ContaCorrente.TaxaOperacao);


            try
            {
                ContaCorrente conta1 = new ContaCorrente(4564, 789684);
                ContaCorrente conta2 = new ContaCorrente(7891, 456794);

                conta1.Transferir(10000, conta2);
                conta1.Sacar(1000);
            }
            catch (SaldoInsuficienteException e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace);




            }
            catch (OperacaoFinanceiraException e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace);


                Console.WriteLine("Informações da INNER EXCEPTION (exceção interna):");
                Console.WriteLine(e.InnerException.Message);
                Console.WriteLine(e.InnerException.StackTrace);


            }
        }

    }

}
