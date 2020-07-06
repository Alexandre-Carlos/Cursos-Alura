using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.Funcionarios
{
    public class Desenvolvedor : Funcionario
    {
        public static int TotalDeDesenvolvedor { get; private set; }
        public Desenvolvedor(string cpf) : base(3000, cpf)
        {
            Console.WriteLine("Criando Desenvolvedor!");
            TotalDeDesenvolvedor++;
        }

        public override double GetBonificacao()
        {
            return Salario *= 0.1;
        }

        public override void AumentarSalario()
        {
            Salario *= 0.15;
        }
    }
}
