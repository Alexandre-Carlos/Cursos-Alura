using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class ConsultaClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            List<Clientes> ConsultarClientes = new ClienteController().ConsultarClientes();

            if (ConsultarClientes.Count > 0)
            {
                StringBuilder gridCliente = new StringBuilder();

                foreach (var item in ConsultarClientes)
                {
                    string Sexo = "";
                    string Foto = "";
                    if (item.Sexo == "M")
                        Sexo = "Masculino";
                    else
                        Sexo = "Feminino";

                    if (item.Foto == "")
                        Foto = "semfoto.jpg";
                    else
                        Foto = item.Foto;

                    gridCliente.Append(" <tr class='even pointer'> ");
                    gridCliente.Append(String.Format(" <td class=' '>{0}</td> ", item.NomeCliente));
                    gridCliente.Append(String.Format(" <td class=' '>{0}</td> ", item.Telefone));
                    gridCliente.Append(String.Format(" <td class=' '>{0} </td> ", Sexo));
                    gridCliente.Append(String.Format(" <td class=' '>{0}</td> ", item.DataNascimento));
                    gridCliente.Append(String.Format(" <td class=' '>{0}</td> ", item.Cpf));
                    gridCliente.Append(String.Format(" <td class=' '><img src='FotoCliente/{0}' style='width:30px; heigth:30px;'></td> ", Foto));
                    gridCliente.Append(String.Format(" <td class=' last'><a href='FormCadCliente.aspx?codCliente={0}'>Ver detalhes</td> ", item.IdCliente));
                    //gridCliente.Append(" <td class=' last'><a href = '#'> Ver </a> ");
                    gridCliente.Append(" </td>");
                    gridCliente.Append(" </tr> ");
                }
                resultClient.InnerHtml = gridCliente.ToString();
            }
        }
    }
}