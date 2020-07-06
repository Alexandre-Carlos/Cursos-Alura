using StudioProjeto.DAO;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Controller
{
    public class ServicoController
    {
        ServicoDB ServicosDB = new ServicoDB();

        public Servico InsertServico(int codCliente, string dataServico, Decimal valor, string tipoServico, string obsCliente, string obsGerais, string fotoServico)
        {
            return new ServicoDB().InsertServico(codCliente, dataServico, valor, tipoServico, obsCliente, obsGerais, fotoServico);
        }

        public List<Servico> todoPeriodo(string TipoConsulta)
        {
            return new ServicoDB().todoPeriodo(TipoConsulta);
        }

        public List<Servico> ConsultaPersonalizada(string DataInicio, string DataFim)
        {
            return new ServicoDB().ConsultaPersonalizada(DataInicio, DataFim);
        }

        public List<Servico> ConsultaPorCliente(int CodigoCliente)
        {
            return new ServicoDB().ConsultaPorCliente(CodigoCliente);
        }

        public List<Servico> ConsultaPorServico(int TipoServico)
        {
            return new ServicoDB().ConsultaPorServico(TipoServico);
        }
        

        public string ExcluiRegistro(string registro)
        {
            return new ServicoDB().ExcluiRegistro(registro);
        }

        public ServicoController() {}
    }
}
