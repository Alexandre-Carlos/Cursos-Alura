using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using ByteBank.Modelos;
using ByteBank.SistemaAgencia.Comparadores;
using ByteBank.SistemaAgencia.Extensoes;
using Humanizer;

namespace ByteBank.SistemaAgencia
{
    class Program
    {
        static void Main(string[] args)
        {

            //Retornar negativo quando a instância precede o obj
            //Retornar zero quando nossa instância e obj forem equivalentes
            //Retornar positivo diferente de zero quando a precedencia for de obj


            var contas = new List<ContaCorrente>()
            {
                new ContaCorrente(341, 57480),
                new ContaCorrente(340, 1),
                null,
                new ContaCorrente(342, 45678),
                new ContaCorrente(340, 48950),
                new ContaCorrente(340, 99999),
                null,
                null,
                new ContaCorrente(290, 18950)
                
            };

            //contas.Sort(); ---> chama a implementação dada em IComparable

            //contas.Sort(new ComparadorContaCorrentePorAgencia());

            var contasOrdenadas = contas
                .Where(conta => conta != null)
                .OrderBy(conta => conta.Numero);

            foreach (var conta in contasOrdenadas)
            {
               
                    Console.WriteLine($"Conta número {conta.Numero}, ag. {conta.Agencia}");
              
            }


            //IOrderedEnumerable<ContaCorrente> contasOrdenadas = contas.OrderBy(conta => {

            //    if (conta == null)
            //    {
            //        return int.MaxValue;
            //    }


            //    return conta.Numero;
            //});

            //foreach (var conta in contasOrdenadas)
            //{
            //    if (conta != null)
            //    {

            //        Console.WriteLine($"Conta número {conta.Numero}, ag. {conta.Agencia}");
            //    }
            //}


            //utilização de uma lista generica, onde é passado o tipo do parametro na criação
            //Lista<int> idades = new Lista<int>();

            //idades.Adicionar(1);
            //idades.Adicionar(5);
            //idades.Adicionar(14);
            //idades.Adicionar(25);
            //idades.Adicionar(38);
            //idades.Adicionar(61);
            //idades.AdicionarVarios(1, 5, 78);


            //idades.Remover(5);

            //for (int i = 0; i < idades.Tamanho; i++)
            //{
            //    int idade = idades[i];
            //    Console.WriteLine($"Idade no indice {i}: indice {idade}");
            //}



            //Console.WriteLine(SomarVarios(10, 20, 30, 40, 50, 60, 70, 80));
            //Console.WriteLine(SomarVarios(1, 2));









            Console.ReadLine();

        }


        static void TestaSort()
        {
            var nomes = new List<string>()
            {
                "Guilherme",
                "Luana",
                "Wellington",
                "Ana"
            };

            nomes.Sort();

            foreach (var nome in nomes)
            {

                Console.WriteLine(nome);
            }

            //List<int> idades = new List<int>();
            var idades = new List<int>();

            idades.Add(1);
            idades.Add(5);
            idades.Add(14);
            idades.Add(25);
            idades.Add(38);
            idades.Add(61);

            //ListExtensoes.AdicionarVarios(idades, 1, 56, 19, 67, 98);

            //utilizando o this no metodo é feita uma extensão do list
            idades.AdicionarVarios(45, 89, 12);
            idades.AdicionarVarios(99, -1);

            //idades.Remove(5);


            idades.Sort();


            for (int i = 0; i < idades.Count; i++)
            {
                int idade = idades[i];
                Console.WriteLine($"Idade no indice {i}: indice {idade}");
            }


        }


        static void criacaovar()
        {
            //criação de variavel usando a palavra var - "Inferencia de tipo de variavel"
            var conta = new ContaCorrente(344, 56456456);
            var gerenciador = new GerenciadorBonificacao();
            var gerenciadores = new List<GerenciadorBonificacao>();

            var idade = 14;
            var nome = "Alura";

            var resultado = SomarVarios(1, 5, 9);

        }
        static void TestaListaDeObject()
        {
            ListaDeObject listadDeIdades = new ListaDeObject();

            listadDeIdades.Adicionar(10);
            listadDeIdades.Adicionar(5);
            listadDeIdades.Adicionar(4);
            listadDeIdades.AdicionarVarios(16, 23, 60);

            for (int i = 0; i < listadDeIdades.Tamanho; i++)
            {
                int idade = (int)listadDeIdades[i];
                Console.WriteLine($"Idade no indice {i}: indice {idade}");
            }
        }



        //utilizando o metodo com varios parametros para somar numero que são passados através do metodo
        // SomarVarios(10,20,30,40,50,60,70,80)
        static int SomarVarios(params int[] numeros)
        {
            int acumulador = 0;
            foreach(int numero in numeros)
            {
                acumulador += numero;
            }
            return acumulador;
        }




        static void TestaListadeContaCorrente()
        {
            ListaDeContaCorrente lista = new ListaDeContaCorrente();

            ContaCorrente contaDoGui = new ContaCorrente(11111, 1111111111);

            //lista.Adicionar(contaDoGui);

            //lista.Adicionar(new ContaCorrente(874, 5679787));
            //lista.Adicionar(new ContaCorrente(874, 5679754));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));
            //lista.Adicionar(new ContaCorrente(874, 5679445));

            //simplificação do codigo acima através de array, criado abaixo um inicializador de array com as varias contas.
            //ContaCorrente[] contas = new ContaCorrente[]
            //{
            //    contaDoGui,
            //    new ContaCorrente(874, 5679787),
            //    new ContaCorrente(874, 5679754),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445),
            //    new ContaCorrente(874, 5679445)

            //};

            //adicionar varias contas através do metodo AdicionarVarios
            //lista.AdicionarVarios(contas);

            // adicionar varias contas com o metodo adicionarVarios com varios parametros sem restrição, utilizando o params

            lista.AdicionarVarios(
            contaDoGui,
            new ContaCorrente(874, 5679787),
            new ContaCorrente(874, 5679754),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445),
            new ContaCorrente(874, 5679445)
            );




            for (int i = 0; i < lista.Tamanho; i++)
            {
                //ContaCorrente itemAtual = lista.GetItemNoIndice(i);
                ContaCorrente itemAtual = lista[i];
                Console.WriteLine($"Item na proxição {i} = Conta {itemAtual.Numero}/{itemAtual.Agencia}");
            }



            //lista.EscreverListaNaTela();
            //lista.Remover(contaDoGui);

            //Console.WriteLine("Após remover o item");

            //lista.EscreverListaNaTela();
        }




        static void TestaArrayDeContaCorrente()
        {
            //inicialização de arrays
            ContaCorrente[] contas = new ContaCorrente[]
            {
                new ContaCorrente(874, 5679787),
                new ContaCorrente(874, 4456668),
                new ContaCorrente(874, 7781438)
            };



            //contas[0] = new ContaCorrente(874, 5679787);
            //contas[1] = new ContaCorrente(874, 4456668);
            //contas[2] = new ContaCorrente(874, 7781438);

            for (int indice = 0; indice < contas.Length; indice++)
            {

                Console.WriteLine(contas[indice]);

            }
        }

        static void TestaArrayint()
        {
            //ARRAY de inteiros, com 5 posições!

            int[] idades = new int[3];

            idades[0] = 15;
            idades[1] = 28;
            idades[2] = 35;
            //idades[3] = 50;
            //idades[4] = 28;
            //idades[5] = 60;

            int acumulador = 0;
            for (int indice = 0; indice < idades.Length; indice++)
            {
                int idade = idades[indice];
                acumulador += idades[indice];

                Console.WriteLine($"Acessando o array idades no índice {indice}");
                Console.WriteLine($"Valor de idade[{indice}] = {idade}");

            }

            int media = acumulador / idades.Length;
            Console.WriteLine($"média de idades = {media}");
        }

        static void TestaString()
        {

            // Olá, meu nome é Guilherme e você pode entrar em contato comigo
            // através do número 8457-4456!


            // Meu nome é Guilherme, me ligue em 4784-4546

            // expressões regulares

            string padrao = "[0-9]{4,5}[-][0-9]{4}";
            string textoDeTeste = "Meu nome é Guilherme, me ligue em 4784-4546";

            Match resultado = Regex.Match(textoDeTeste, padrao);

            Console.WriteLine(resultado.Value);

            Console.ReadLine();









            string urlteste = "http://www.bytebank.com/cambio";

            int indiceByteBank = urlteste.IndexOf("http://www.bytebank.com");


            Console.WriteLine(urlteste.StartsWith("http://www.bytebank.com"));
            Console.WriteLine(urlteste.EndsWith("cambio/"));


            Console.WriteLine(urlteste.Contains("bytebank"));







            string urlParametros = "http://www.bytebank.com/cambio?moedaOrigem=real&moedaDestino=dolar&valor=1500";

            ExtratorValorDeArgumentosURL extratorDeValores = new ExtratorValorDeArgumentosURL(urlParametros);

            string valordestino = extratorDeValores.GetValor("MoedaDestino");
            string valororigem = extratorDeValores.GetValor("MoedaOrigem");
            string valor = extratorDeValores.GetValor("VALOR");


            Console.WriteLine("Valor de moedaOrigem: " + valororigem);
            Console.WriteLine("Valor de moedaDestino: " + valordestino);
            Console.WriteLine("Valor para conversão: " + valor);

            Console.ReadLine();







            //<nome>=<valor>
            string palavra = "pagina?modedaOrigem=real&moedaDestino=dolar";
            string nomeArgumento = "moedaDestino=";

            int indice = palavra.IndexOf(nomeArgumento);
            Console.WriteLine(indice);

            Console.WriteLine("Tamanho da string nomeArgumento:" + nomeArgumento.Length);

            Console.WriteLine(palavra);
            Console.WriteLine(palavra.Substring(indice));
            Console.WriteLine(palavra.Substring(indice + nomeArgumento.Length));
            Console.ReadLine();










            /*
            //Testando o IsNullOrEmpty
            string textoVazio = "";
            string textoNulo = null;
            string textoQualquer = "dfasfasfasasdfsadf";

            Console.WriteLine(String.IsNullOrEmpty(textoVazio));
            Console.WriteLine(String.IsNullOrEmpty(textoNulo));
            Console.WriteLine(String.IsNullOrEmpty(textoQualquer));

            Console.ReadLine();
            */

            //trabalhando com strings

            string url = "pagina?modedaOrigem=real&moedaDestino=dolar";

            int indiceInterrogacao = url.IndexOf('?');

            Console.WriteLine(indiceInterrogacao);

            Console.WriteLine(url);

            string argumentos = url.Substring(indiceInterrogacao + 1);

            Console.WriteLine(argumentos);




            /* DateTime dataFimPagamento = new DateTime(2019, 3, 17);
            DateTime dataCorrente = DateTime.Now;

            TimeSpan diferenca = TimeSpan.FromMinutes(90); //dataFimPagamento - dataCorrente;

            string mensagem = "Vencimento em: " + TimeSpanHumanizeExtensions.Humanize(diferenca);



            Console.WriteLine(mensagem);
            */

            //teste toupper, comparações e replace
            string endereco = "R. São Carlos do Pinhal nº746";
            string enderecoFormatado = endereco
                .ToUpper()
                .Replace("R.", "Rua")
                .Replace("Nº", ", Número ")
                .ToUpper();

            Console.WriteLine(enderecoFormatado);



        }
    }
}
