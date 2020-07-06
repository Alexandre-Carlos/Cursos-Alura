using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.SistemaAgencia
{
    public class ListaDeObject
    {


        private object[] _itens;
        private int _proximaPosicao;
        public int Tamanho { get { return _proximaPosicao; } }

        public ListaDeObject(int capacidadeInicial = 5)
        {
            _itens = new object[capacidadeInicial];
            _proximaPosicao = 0;



        }

        public void Adicionar(object item)
        {
            VerificaCapacidade(_proximaPosicao + 1);

            //Console.WriteLine($"Adicionando item na posição {_proximaPosicao}");


            _itens[_proximaPosicao] = item;
            _proximaPosicao++;


        }

        public void AdicionarVarios(params object[] itens)
        {
            //for(int i = 0; i < itens.Length; i++)
            //{
            //    Adicionar(itens[i]);
            //}

            //foreach(para cada) simplifica a estrutura de for acima
            foreach (object item in itens)
            {
                Adicionar(item);
            }

        }




        public void Remover(object item)
        {

            int indiceItem = 0;

            for (int i = 0; i < _proximaPosicao; i++)
            {
                object itemAtual = _itens[i];

                if (itemAtual.Equals(item))
                {
                    indiceItem = i;
                    break;
                }

            }

            for (int i = indiceItem; i < _proximaPosicao - 1; i++)
            {
                _itens[i] = _itens[i + 1];
            }

            _proximaPosicao--;
            _itens[_proximaPosicao] = null;

        }

        public object GetItemNoIndice(int indice)
        {
            if (indice < 0 || indice >= _proximaPosicao)
            {
                throw new ArgumentOutOfRangeException(nameof(indice));
            }
            return _itens[indice];
        }




        //public void EscreverListaNaTela()
        //{
        //    for(int i = 0; i < _proximaPosicao; i++)
        //    {
        //        ContaCorrente conta = _itens[i];
        //        Console.WriteLine($"Conta indice {i}: numero {conta.Agencia} {conta.Numero}");
        //    }
        //}

        private void VerificaCapacidade(int tamanhoNecessario)
        {
            if (_itens.Length >= tamanhoNecessario)
            {
                return;
            }

            int novoTamanho = _itens.Length * 2;
            if (novoTamanho < tamanhoNecessario)
            {
                novoTamanho = tamanhoNecessario;
            }



            //Console.WriteLine("aumentando capacidade da lista!");
            object[] novoArray = new object[tamanhoNecessario];

            /*for(int indice = 0; indice < _itens.Length; indice++)
            {


                novoArray[indice] = _itens[indice];
            }
            */

            //Console.WriteLine(".");
            Array.Copy(
                        sourceArray: _itens,
                        destinationArray: novoArray,
                        length: _itens.Length);



            _itens = novoArray;
        }

        //acesso do indice por meio de criação de indexador
        public object this[int indice]
        {
            get
            {
                return GetItemNoIndice(indice);
            }
        }

        //exemplo de indexador string
        public object this[string texto]
        {
            get
            {
                return null;
            }
        }

    }
}
