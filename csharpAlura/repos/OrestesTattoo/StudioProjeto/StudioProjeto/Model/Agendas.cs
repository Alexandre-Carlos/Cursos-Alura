using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Model
{
    public class Agendas
    {
        public Agendas() { _idAgenda = 0; }
        #region Propriedades da agenda

        private int _idAgenda;
        public int IdAgenda
        {
            get { return _idAgenda; }
            set { _idAgenda = value; }
        }
        private DateTime _dataServico;
        public DateTime DataServico
        {
            get { return _dataServico; }
            set { _dataServico = value; }
        }
        private string _hora;
        public string Hora
        {
            get { return _hora; }
            set { _hora = value; }
        }

        private string _tempoEstimado;
        public string TempoEstimado
        {
            get { return _tempoEstimado; }
            set { _tempoEstimado = value; }
        }
        private string _cliente;
        public string Cliente
        {
            get { return _cliente; }
            set { _cliente = value; }
        }
        private string _celular;
        public string Celular
        {
            get { return _celular; }
            set { _celular = value; }
        }
        private string _efetivado;
        public string Efetivado
        {
            get { return _efetivado; }
            set { _efetivado = value; }
        }

        #endregion
    }
}
