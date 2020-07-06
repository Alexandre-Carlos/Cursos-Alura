using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.Funcionarios
{
    public class Designer : Funcionario
    {


        public static int TotalDeDesigners { get; private set; }

        public Designer(string cpf) : base(3000, cpf)
        {
            Console.WriteLine("Criando Designer!");
            TotalDeDesigners++;
        }
        public override double GetBonificacao()
        {
            return Salario *= 0.17;
        }

        public override void AumentarSalario()
        {
            Salario *= 1.11;
        }

    }
}
