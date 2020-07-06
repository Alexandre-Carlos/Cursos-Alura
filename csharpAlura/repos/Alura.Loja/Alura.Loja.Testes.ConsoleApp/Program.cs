using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alura.Loja.Testes.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            //IncluirPromocao();

            //ExibeProdutosDaPRomocao();



            using (var contexto = new LojaContext())
            {
                var serviceProvider = contexto.GetInfrastructure<IServiceProvider>();
                var loggerFactory = serviceProvider.GetService<ILoggerFactory>();
                loggerFactory.AddProvider(SqlLoggerProvider.Create());

                var cliente = contexto
                    .Clientes
                    .Include(c => c.EnderecoDeEntrega)
                    .FirstOrDefault();

                Console.WriteLine($"Endereço de entrega: {cliente.EnderecoDeEntrega.Logradouro}");

                var produto = contexto
                    .Produtos
                    //.Include(p => p.Compras)
                    .Where(p => p.Id == 3002)
                    .FirstOrDefault();

                //carregamento explicito
                contexto.Entry(produto)
                    .Collection(p => p.Compras)
                    .Query()
                    .Where(c => c.Preco > 2)
                    .Load();

                Console.WriteLine($"Mostrando as compras do produto {produto.Nome}");
                foreach (var item in produto.Compras)
                {
                    Console.WriteLine("\t" + item);
                }
                
            }

        }

        private static void ExibeProdutosDaPRomocao()
        {
            using (var contexto2 = new LojaContext())
            {
                var serviceProvider = contexto2.GetInfrastructure<IServiceProvider>();
                var loggerFactory = serviceProvider.GetService<ILoggerFactory>();
                loggerFactory.AddProvider(SqlLoggerProvider.Create());

                var promocao = contexto2.Promocao.Include(p => p.Produtos).ThenInclude(pp => pp.Produto).FirstOrDefault();



                Console.WriteLine("\nMostrando os produtos da promoção...");
                foreach (var item in promocao.Produtos)
                {

                    Console.WriteLine(item.Produto);
                }

            }
        }




        private static void IncluirPromocao()
        {
            using (var contexto = new LojaContext())
            {
                var serviceProvider = contexto.GetInfrastructure<IServiceProvider>();
                var loggerFactory = serviceProvider.GetService<ILoggerFactory>();
                loggerFactory.AddProvider(SqlLoggerProvider.Create());

                //var novoProduto = new Produto()
                //{
                //    Nome = "Vinho",
                //    Categoria = "Bebidas",
                //    PrecoUnitario = 47.89
                //};

                //var novoProduto1 = new Produto()
                //{
                //    Nome = "Refrigerante",
                //    Categoria = "Bebidas",
                //    PrecoUnitario = 7.52
                //};
                //contexto.Produtos.Add(novoProduto);
                //contexto.Produtos.Add(novoProduto1);


                //contexto.SaveChanges();



                var promocao = new Promocao();
                promocao.Descricao = "Queima Total Janeiro 2017";
                promocao.DataInicio = new DateTime(2017, 1, 1);
                promocao.DataTermino = new DateTime(2017, 1, 31);

                var produtos = contexto.Produtos
                    .Where(p => p.Categoria == "Bebidas")
                    .ToList();

                foreach (var item in produtos)
                {
                    promocao.IncluiProduto(item);
                }

                contexto.Promocao.Add(promocao);

                ExibeEntries(contexto.ChangeTracker.Entries());

                contexto.SaveChanges();


            }
        }

        static void UmParaUm()
        {
            var fulano = new Cliente();
            fulano.Nome = "Fulaninho de Tal";
            fulano.EnderecoDeEntrega = new Endereco()
            {
                Numero = 12,
                Logradouro = "Rua dos Inválidos",
                Complemento = "Sobrado",
                Bairro = "Centro",
                Cidade = "Cidade"
            };

            using (var contexto = new LojaContext())
            {
                var serviceProvider = contexto.GetInfrastructure<IServiceProvider>();
                var loggerFactory = serviceProvider.GetService<ILoggerFactory>();
                loggerFactory.AddProvider(SqlLoggerProvider.Create());




                contexto.Clientes.Add(fulano);
                contexto.SaveChanges();

            }
        }

    static void MuitosParaMuitos()
    {
        //compra de 6 pães franceses
        //var paoFrances = new Produto();
        //paoFrances.Nome = "Pão Francês";
        //paoFrances.PrecoUnitario = 0.40;
        //paoFrances.Unidade = "Unidade";
        //paoFrances.Categoria = "Padaria";

        //var compra = new Compra();
        //compra.Quantidade = 6;
        //compra.Produto = paoFrances;
        //compra.Preco = paoFrances.PrecoUnitario * compra.Quantidade;


        var p1 = new Produto() { Nome = "Suco de Laranja", Categoria = "Bebidas", PrecoUnitario = 8.79, Unidade = "Litros" };
        var p2 = new Produto() { Nome = "Café", Categoria = "Bebidas", PrecoUnitario = 12.45, Unidade = "Gramas" };
        var p3 = new Produto() { Nome = "Macarrão", Categoria = "Alimentos", PrecoUnitario = 4.23, Unidade = "Gramas" };

        var promocaoDePascoa = new Promocao();
        promocaoDePascoa.Descricao = "Páscoa Feliz";
        promocaoDePascoa.DataInicio = DateTime.Now;
        promocaoDePascoa.DataTermino = DateTime.Now.AddMonths(3);



        promocaoDePascoa.IncluiProduto(p1);
        promocaoDePascoa.IncluiProduto(p2);
        promocaoDePascoa.IncluiProduto(p3);


        using (var contexto = new LojaContext())
        {
            var serviceProvider = contexto.GetInfrastructure<IServiceProvider>();
            var loggerFactory = serviceProvider.GetService<ILoggerFactory>();
            loggerFactory.AddProvider(SqlLoggerProvider.Create());

            //contexto.Promocao.Add(promocaoDePascoa);


            var promocao = contexto.Promocao.Find(1);
            contexto.Promocao.Remove(promocao);

            //ExibeEntries(contexto.ChangeTracker.Entries());
            contexto.SaveChanges();
        }
    }



        static void DemostracaoChanchTrackedEntity()
        {
            using (var contexto = new LojaContext())
            {
                var serviceProvider = contexto.GetInfrastructure<IServiceProvider>();
                var loggerFactory = serviceProvider.GetService<ILoggerFactory>();
                loggerFactory.AddProvider(SqlLoggerProvider.Create());

                var produtos = contexto.Produtos.ToList();
                foreach (var p in produtos)
                {
                    Console.WriteLine(p);
                }


                ExibeEntries(contexto.ChangeTracker.Entries());


                var novoProduto = new Produto()
                {
                    Nome = "Sabão em pó",
                    Categoria = "Limpeza",
                    PrecoUnitario = 4.99
                };
                contexto.Produtos.Add(novoProduto);

                ExibeEntries(contexto.ChangeTracker.Entries());
                //var p1 = produtos.Last();
                contexto.Produtos.Remove(novoProduto);


                ExibeEntries(contexto.ChangeTracker.Entries());

                //contexto.SaveChanges();

                var entry = contexto.Entry(novoProduto);

                Console.WriteLine("/n/n" + entry.Entity.ToString() + " - " + entry.State);

                ExibeEntries(contexto.ChangeTracker.Entries());


            }
        }


        private static void ExibeEntries(IEnumerable<EntityEntry> entries)
        {
            Console.WriteLine("==============");

            foreach (var e in entries)
            {
                Console.WriteLine(e.Entity.ToString() + " - " + e.State);
            }
        }
    }
}
