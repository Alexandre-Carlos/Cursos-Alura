using ByteBank.Sistemas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.Funcionarios
{
    public class GerenteDeContas : FuncionarioAutenticavel
    {


        public static int TotalDeGerenteDeContas { get; private set; }

        public GerenteDeContas(string cpf) : base(4000, cpf)
        {
            Console.WriteLine("Criando Gerente de Contas!");
            TotalDeGerenteDeContas++;
        }
        public override double GetBonificacao()
        {
            return Salario *= 0.25;
        }

        public override void AumentarSalario()
        {
            Salario *= 1.05;
        }




    }
}
