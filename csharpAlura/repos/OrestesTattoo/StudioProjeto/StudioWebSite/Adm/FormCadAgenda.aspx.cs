using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class FormCadAgenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            string codAgenda = Request.QueryString["codAgenda"];
        }

        [WebMethod]
        public static Agendas GravarSessao(string DataServico, string Hora, string TempoEstimado, string Cliente, string Celular, string Efetivado)
        {
            Agendas gravaSessao = new AgendaController().GravarSessao(DataServico, Hora, TempoEstimado, Cliente, Celular, Efetivado);

            return new Agendas();
        }

        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        [WebMethod]
        public static string PopulaCombo(string DataServico)
        {
            string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;
            SqlConnection conn = new SqlConnection(conecta);

            List<Horario> lstHorario = new List<Horario>();
            lstHorario.Clear();

            string sql = "select a.Hora "
                        + "from tab_hora a ";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();
            SqlDataReader selHora = cmd.ExecuteReader();

            while (selHora.Read())
            {
                Horario horario = new Horario();
                horario.Hora = selHora["Hora"].ToString();
                lstHorario.Add(horario);
            }

            var jsonSerializer = new JavaScriptSerializer();
            string result = jsonSerializer.Serialize(lstHorario);

            conn.Close();

            return result;
        }

    }
}