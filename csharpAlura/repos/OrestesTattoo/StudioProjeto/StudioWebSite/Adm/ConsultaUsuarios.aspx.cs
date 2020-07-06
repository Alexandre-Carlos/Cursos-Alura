using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class ConsultaUsuarios : System.Web.UI.Page
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            List<Usuarios> ConsultaUser = new UsuarioController().ConsultarUsuario();

            if (ConsultaUser.Count > 0)
            {

                StringBuilder gridUsuer = new StringBuilder();
                foreach (var item in ConsultaUser)
                {
                    gridUsuer.Append(" <tr class='even pointer'> ");
                    gridUsuer.Append( String.Format(" <td class=' '>{0}</td> ", item.DataCadastro));
                    gridUsuer.Append(String.Format(" <td class=' '>{0}</td> ", item.NomeCompleto));
                    gridUsuer.Append(String.Format(" <td class=' '>{0} </td> ", item.Cpf));
                    gridUsuer.Append(String.Format(" <td class=' '>{0}</td> ", item.Login));
                    gridUsuer.Append(String.Format(" <td class=' '>{0}</td> ", item.Sexo));
                    gridUsuer.Append(String.Format(" <td class='a -right a-right '>{0}</td> ", item.Ativo));
                    gridUsuer.Append(" <td class=' last'><a href = '#'> Ver </a> ");
                    gridUsuer.Append(" </td>");
                    gridUsuer.Append(" </tr> ");
                }
                resultUser.InnerHtml = gridUsuer.ToString();
            }

            //if (!IsPostBack)
            //{
            //    showUser();
            //}
    }

        //private void showUser()
        //{

        //    SqlConnection conn = new SqlConnection(conecta);
        //    string cmd = "select * from TAB_USUARIOS";

        //    SqlDataAdapter da = new SqlDataAdapter(cmd, conn);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);

        //    myGrid.DataSource = dt;
        //    myGrid.DataBind();

        //    //throw new NotImplementedException();
        //}
    }
}