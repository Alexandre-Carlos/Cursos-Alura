using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.Funcionarios
{
    public class Auxiliar : Funcionario
    {


        public static int TotalDeAuxiliares { get; private set; }

        public Auxiliar(string cpf) : base(2000, cpf)
        {
            Console.WriteLine("Criando Auxiliar!");
            TotalDeAuxiliares++;
        }
        public override double GetBonificacao()
        {
            return Salario *= 0.20;
        }

        public override void AumentarSalario()
        {
            Salario *= 1.10;
        }

    }
}
