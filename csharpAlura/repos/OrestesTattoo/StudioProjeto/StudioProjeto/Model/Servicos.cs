using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Model
{
    public class Servicos
    {
        public Servicos() { _idServicos = 0; }

        #region Propriedades serviços
        private int _idServicos;
        public int IdServicos
        {
            get { return _idServicos; }
            set { _idServicos = value; }
        }

        private int _codCliente;
        public int CodCliente
        {
            get { return _codCliente; }
            set { _codCliente = value; }
        }

        private DateTime _dataServico;
        public DateTime DataServico
        {
            get { return _dataServico; }
            set { _dataServico = value; }
        }

        private Decimal _valor;
        public Decimal Valor
        {
            get { return _valor; }
            set { _valor = value; }
        }
        #endregion
    }
}
