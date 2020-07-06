using ByteBank.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.SistemaAgencia.Comparadores
{
    public class ComparadorContaCorrentePorAgencia : IComparer<ContaCorrente>
    {
        public int Compare(ContaCorrente x, ContaCorrente y)
        {
            if (x == y)
            {
                return 0;
            }

            if (x == null)
            {
                return 1;
            }

            if (y == null)
            {
                return -1;
            }

            //if (x.Agencia < y.Agencia)
            //{
            //    return -1;
            //}

            //if (x.Agencia == y.Agencia)
            //{
            //    return 0;
            //}

            //return 1;

            //como o tipo da comparação ja tem a interface IComparable, não é necessário todos os ifs abaixo para comparação e retorno de valor
            return x.Agencia.CompareTo(y.Agencia);


            //Nossas comparações de numeros interios são equivalentes
            //ao que já existe no tipo INT
            


        }
    }
}
