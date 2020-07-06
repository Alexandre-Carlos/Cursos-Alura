using StudioProjeto.DAO;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Controller
{
    public class AgendaController
    {
        AgendaDB agenDB = new AgendaDB();

        public string ConsultarAgenda(string DataServico)
        {
            return new AgendaDB().ConsultarAgenda(DataServico);
        }

        public Agendas GravarSessao(string DataServico, string Hora, string TempoEstimado, string Cliente, string Celular, string Efetivado)
        {
            return new AgendaDB().GravarSessao(DataServico, Hora, TempoEstimado, Cliente, Celular, Efetivado);
        }

        public AgendaController() { }
    }
}
