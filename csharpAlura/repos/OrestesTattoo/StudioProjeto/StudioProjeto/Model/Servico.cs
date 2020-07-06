using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Model
{
    public class Servico
    {
        public Servico() { _idServicos = 0; }
        #region Propriedades servico

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

        private string _nomeCliente;
        public string NomeCompleto
        {
            get { return _nomeCliente; }
            set { _nomeCliente = value; }
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

        private string _tipoServico;
        public string TipoServico
        {
            get { return _tipoServico; }
            set { _tipoServico = value; }
        }

        private string _obsCliente;
        public string ObsCliente
        {
            get { return _obsCliente; }
            set { _obsCliente = value; }
        }

        private string _obsGerais;
        public string ObsGerais
        {
            get { return _obsGerais; }
            set { _obsGerais = value; }
        }

        private string _fotoServico;
        public string FotoServico
        {
            get { return _fotoServico; }
            set { _fotoServico = value; }
        }

        #endregion

    }
}
