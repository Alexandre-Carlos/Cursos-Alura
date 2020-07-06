using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alura.Loja.Testes.ConsoleApp
{
    public class LojaContext1 : DbContext
    {
        public DbSet<Produto> Produtos { get; set; }

        public LojaContext1()
        { }

        public LojaContext1(DbContextOptions<LojaContext> options) : base(options)
        { }

        ////protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    if (!optionsBuilder.IsConfigured)
        //    {
        //        optionsBuilder
        //            .UseSqlServer("Server=(localdb)\\mssqllocaldb;Database=LojaDB;Trusted_Connection=true;");
        //    }
        //}
    }
}