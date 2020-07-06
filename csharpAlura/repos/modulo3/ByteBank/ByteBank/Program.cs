using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ByteBank.Funcionarios;
using ByteBank.Sistemas;

namespace ByteBank
{
    class Program
    {

        static void Main(string[] args)
        {






            /*
              
                GerenciadorBonificacao gerenciador = new GerenciadorBonificacao();




                Funcionario carlos = new Funcionario(2000, "546.879.157-20");

                carlos.Nome = "Carlos";

                carlos.AumentarSalario();

                Console.WriteLine("Novo Salário do Carlos: " + carlos.Salario);


                Console.WriteLine(Funcionario.TotalDeFuncionarios);

                gerenciador.Registrar(carlos);

                Diretor roberta = new Diretor(5000, "454.658.148-3");

                roberta.Nome = "Roberta";
            
                roberta.AumentarSalario();

                Console.WriteLine("Novo Salário do Roberta: " + roberta.Salario);


                Console.WriteLine("Total de Funcionários:" + Funcionario.TotalDeFuncionarios);
                Console.WriteLine("Total de Diretores:" + Diretor.TotalDeDiretores);


                Funcionario robertaTeste = roberta;

                Console.WriteLine("Bonificação de uma referencia de Diretor: " + roberta.GetBonificacao());
                Console.WriteLine("Bonificação de uma referencia de Funcionário: " + robertaTeste.GetBonificacao());




                gerenciador.Registrar(roberta);

                Console.WriteLine(carlos.Nome);
                Console.WriteLine(carlos.GetBonificacao());

                Console.WriteLine(roberta.Nome);
                Console.WriteLine(roberta.GetBonificacao());

                Console.WriteLine("Total de bonificações: " + gerenciador.GetTotalBonificacao());

           */

            //CalcularBonificacao();

            UsarSistema();

            Console.ReadLine();

        }


        public static void UsarSistema()
        {
            SistemaInterno sistemaInterno = new SistemaInterno();

            Diretor roberta = new Diretor("159.753.398-04");
            roberta.Nome = "Roberta";
            roberta.Senha = "123";

            GerenteDeContas camila = new GerenteDeContas("326.985.628-89");
            camila.Nome = "Camila";
            camila.Senha = "abc";


            ParceiroComercial parceiro = new ParceiroComercial();
            parceiro.Senha = "123456";

            sistemaInterno.Logar(parceiro, "123456");
            sistemaInterno.Logar(roberta, "123");
            sistemaInterno.Logar(camila, "abc");




        }



        public static void CalcularBonificacao()
        {
            GerenciadorBonificacao gerenciadorBonificacao = new GerenciadorBonificacao();

            Designer pedro = new Designer("833.222.048-39");
            pedro.Nome = "Pedro";

            Diretor roberta = new Diretor("159.753.398-04");
            roberta.Nome = "Roberta";

            Auxiliar igor = new Auxiliar("981.198.778-53");
            igor.Nome = "Igor";

            GerenteDeContas camila = new GerenteDeContas("326.985.628-89");
            camila.Nome = "Camila";

            Desenvolvedor guilherme = new Desenvolvedor("456.175.468-20");
            guilherme.Nome = "Guilherme";

            gerenciadorBonificacao.Registrar(guilherme);
            gerenciadorBonificacao.Registrar(pedro);
            gerenciadorBonificacao.Registrar(roberta);
            gerenciadorBonificacao.Registrar(igor);
            gerenciadorBonificacao.Registrar(camila);

            Console.WriteLine("Total de bonificações do Mês: " + gerenciadorBonificacao.GetTotalBonificacao());
        }



    }
}
