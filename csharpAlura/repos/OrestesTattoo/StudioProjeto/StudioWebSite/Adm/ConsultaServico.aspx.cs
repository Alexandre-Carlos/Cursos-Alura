using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class ConsultaServico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }
        }


        protected void btnConsultarData_Click(object sender, EventArgs e)
        {
            string TipoConsulta = Request["cbTipoServico"];

            if (TipoConsulta == "4")
            {
                this.divPersonalizada.Style.Add("display", "block");
            }
            else
            {
                listaPeriodo(TipoConsulta);
            }
        }

        protected void btnPersonalizarData_Click(object sender, EventArgs e)
        {
            listaPeriodo("4");
        }

        protected void listaPeriodo(string TipoConsulta)
        {
            //List<Servico> ConsultaPeriodo;
            List<Servico> ConsultaPeriodo = new List<Servico>();
            ConsultaPeriodo.Clear();

            if (TipoConsulta != "4")
            {
                ConsultaPeriodo = new ServicoController().todoPeriodo(TipoConsulta);
            }
            else if(TipoConsulta == "4")
            {
                string dataPerson = this.reservation.Value;
                string[] data = dataPerson.Split('-');

                string DataInicio = data[0].Substring(6, 4) + "-"+ data[0].Substring(0, 2) + "-"+ data[0].Substring(3, 2);
                string DataFim = data[1].Substring(7, 4) + "-" + data[1].Substring(1, 2) + "-" + data[1].Substring(4, 2); 

                ConsultaPeriodo = new ServicoController().ConsultaPersonalizada(DataInicio, DataFim);
            }
                
            if (ConsultaPeriodo.Count > 0)
            {
                StringBuilder gridCli = new StringBuilder();
                gridCli.Clear();

                int valorTotal = 0;

                CultureInfo newCulture = new CultureInfo("pt-BR");
                Thread.CurrentThread.CurrentCulture = newCulture;

                

                foreach (var item in ConsultaPeriodo)
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
                gridCli.Append(" </td>");
                gridCli.Append(" </tr> ");

                gridServicos.InnerHtml = gridCli.ToString();
            }
            else
            {
                gridServicos.InnerHtml = "";
            }
        }


        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        [WebMethod()]
        public static string ExcluiRegistro(string registro)
        {
            string result = "";

            string ExcluiRegistro = new ServicoController().ExcluiRegistro(registro);

            
            return result;

        }
    }
}