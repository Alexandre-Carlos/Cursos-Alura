// using _05_ByteBank;

using System;

namespace ByteBank
{
    public class ContaCorrente
    {
        public static double TaxaOperacao { get; private set; }

        public Cliente Titular { get; set; }

        public static int TotalDeContasCriadas { get; private set; }

        public int ContadorSaquesNaoPermitidos { get; private set; }

        public int ContadorTransferenciasNaoPermitidas { get; private set; }

        public int Agencia { get; }  //o campo não pode ser atribuido fora do construtor. fica readonly e não será alterado futuramente.

        public int Numero { get; } //o campo não pode ser atribuido fora do construtor. fica readonly e não será alterado futuramente.

        private double _saldo = 100;

        public double Saldo
        {
            get
            {
                return _saldo;
            }
            set
            {
                if (value < 0)
                {
                    return;
                }

                _saldo = value;
            }
        }


        public ContaCorrente(int agencia, int numero) // construtor
        {

            if (agencia <= 0)
            {
                ArgumentException excecao = new ArgumentException("A Agencia deve ser maior que 0.", nameof(Agencia));
                throw excecao;

            }
            else if (numero <= 0)
            {
                ArgumentException excecao = new ArgumentException("O Numero da conta corrente deve ser maior que 0.",nameof(numero));
                throw excecao;

            }

            Agencia = agencia;

            Numero = numero;



            try
            {
                TotalDeContasCriadas++;
                TaxaOperacao = 30 / TotalDeContasCriadas;
                
            }
            catch(DivideByZeroException)
            {
                Console.WriteLine("Não é possivel dividir por 0!");
            }
        }


        public void Sacar(double valor)
        {
            if (valor < 0)
            {
                throw new ArgumentException("Valor invalido para o saque.", nameof(valor));
            }
            if (_saldo < valor)
            {
                ContadorSaquesNaoPermitidos++;
                throw new SaldoInsuficienteException(Saldo, valor);
            }

            _saldo -= valor;
           
        }

        public void Depositar(double valor)
        {
            _saldo += valor;
        }


        public void Transferir(double valor, ContaCorrente contaDestino)
        {
            if (valor < 0)
            {
                throw new ArgumentException("Valor invalido para a Transferencia.", nameof(valor));
            }

            try
            {
                Sacar(valor);
            }
            catch(SaldoInsuficienteException ex)
            {
                ContadorTransferenciasNaoPermitidas++;
                throw new OperacaoFinanceiraException("Operação não realizada!", ex);
            }
            contaDestino.Depositar(valor);
            
        }
    }
}
