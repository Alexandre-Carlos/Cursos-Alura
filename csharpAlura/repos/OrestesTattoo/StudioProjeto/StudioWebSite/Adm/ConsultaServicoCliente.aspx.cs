using StudioProjeto.Controller;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class ConsultaServicoCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string RecuperaCliente()
        {
            List<ComboCliente> populacombo = new ClienteController().PopulaCliente();

            var jsonSerializer = new JavaScriptSerializer();
            string result = jsonSerializer.Serialize(populacombo);

            return result;
        }

        protected void btnConsultarCliente_Click(object sender, EventArgs e)
        {
            int codCliente = Convert.ToInt32(Request["cbNomeCliente"]);

            listaClientes(codCliente);
        }

        protected void listaClientes(int CodigoCliente)
        {
            //List<Servico> ConsultaPeriodo;
            List<Servico> ConsultaPorClientes = new List<Servico>();
            ConsultaPorClientes.Clear();

            ConsultaPorClientes = new ServicoController().ConsultaPorCliente(CodigoCliente);


            if (ConsultaPorClientes.Count > 0)
            {
                StringBuilder gridCli = new StringBuilder();
                gridCli.Clear();

                int valorTotal = 0;

                foreach (var item in ConsultaPorClientes)
                {
                    gridCli.Append(" <tr class='even pointer'> ");
                    gridCli.Append(String.Format(" <td class=' '>{0}</td> ", item.NomeCompleto));
                    gridCli.Append(String.Format(" <td class=' '>{0:d}</td> ", item.DataServico));
                    gridCli.Append(String.Format(" <td class=' '>{0} </td> ", item.ObsCliente));
                    gridCli.Append(String.Format(" <td class=' '>{0:N}</td> ", item.Valor));
                    gridCli.Append(" <td class=' last'><center> Ver </center> </td>");
                    gridCli.Append(String.Format(" <td class=' last'><center> <img src='imagens/excluir.png' onclick='ExcluiRegistro({0})'> <center></td> ", item.IdServicos));
                    gridCli.Append(" </tr> ");

                    valorTotal += (int)item.Valor;
                }

                gridCli.Append(" <tr class='even pointer'> ");
                gridCli.Append(String.Format(" <td class=' '></td><td class=' '></td><td class=' '> </td> "));
                gridCli.Append(String.Format(" <td class=' '>{0}</td> ", "Valor Total"));
                gridCli.Append(String.Format(" <td class=' '>{0:c}</td> ", valorTotal));
                gridCli.Append(" </td><td></td>");
                gridCli.Append(" </tr> ");

                gridServicos.InnerHtml = gridCli.ToString();
            }
            else
            {
                gridServicos.InnerHtml = "";
            }
        }
    }
}