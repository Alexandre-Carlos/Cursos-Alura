using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank
{
    public class LeitorDeArquivos : IDisposable
    {

        public string Arquivo { get; }

        public LeitorDeArquivos(string arquivo)
        {
            Arquivo = arquivo;
            Console.WriteLine("Abrindo arquivo: " + arquivo);

            //throw new FileNotFoundException();

        }

        public string LerProximaLinha()
        {
            Console.WriteLine("Lendo linha. . .");

            //throw new IOException();  //lança uma excecao para testar um try/catch/finally
            return "linha de Arquivo";
        }

    

        public void Dispose()
        {
            Console.WriteLine("Fechando arquivo.");
        }


    }
}
