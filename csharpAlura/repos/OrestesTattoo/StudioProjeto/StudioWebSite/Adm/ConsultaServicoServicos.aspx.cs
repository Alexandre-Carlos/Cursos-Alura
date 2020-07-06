using StudioProjeto.Controller;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class ConsultaServicoServicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultarPorServico_Click(object sender, EventArgs e)
        {
            int tipoServico = Convert.ToInt32(Request["lblTipoServico"]);

            listaPorServico(tipoServico);
        }

        private void listaPorServico(int tipoServico)
        {
            //List<Servico> ConsultaPeriodo;
            List<Servico> ConsultaPorServico = new List<Servico>();
            ConsultaPorServico.Clear();

            ConsultaPorServico = new ServicoController().ConsultaPorServico(tipoServico);


            if (ConsultaPorServico.Count > 0)
            {
                StringBuilder gridCli = new StringBuilder();
                gridCli.Clear();

                int valorTotal = 0;
                string tiposervico = "";
                foreach (var item in ConsultaPorServico)
                {
                    if (item.TipoServico == "1")
                        tiposervico = "Tatuagem";
                    else if (item.TipoServico == "2")
                        tiposervico = "Piercing";
                    else if (item.TipoServico == "3")
                        tiposervico = "Venda Produto";

                    gridCli.Append(" <tr class='even pointer'> ");
                    gridCli.Append(String.Format(" <td class=' '>{0}</td> ", item.NomeCompleto));
                    gridCli.Append(String.Format(" <td class=' '>{0:d}</td> ", item.DataServico));
                    gridCli.Append(String.Format(" <td class=' '>{0} </td> ", item.ObsCliente));
                    gridCli.Append(String.Format(" <td class=' '>{0} </td> ", tiposervico));
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
                gridCli.Append(" </td><td></td><td></td>");
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