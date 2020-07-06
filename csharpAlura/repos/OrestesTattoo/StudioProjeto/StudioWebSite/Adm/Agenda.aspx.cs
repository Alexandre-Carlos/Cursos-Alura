using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class Agenda : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ValidaLogin.VerificaLogin();

            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            //List<Agendas> ConsultarAgenda = new AgendaController().ConsultarAgenda();

            //if (ConsultarAgenda.Count > 0)
            //{
            //    StringBuilder grdAgenda = new StringBuilder();

            //    foreach (var item in ConsultarAgenda)
            //    {
            //        grdAgenda.Append(" <tr class='even pointer'> ");
            //        //grdAgenda.Append(" <td class='a-center'> ");
            //        //grdAgenda.Append(" <input type = 'checkbox' class='flat' name='table_records'> ");
            //        //grdAgenda.Append(" </td> ");
            //        grdAgenda.Append(String.Format(" <td class=' '>{0}</td> ", item.DataServico));
            //        grdAgenda.Append(String.Format(" <td class=' '>{0}</td> ", item.Hora));
            //        grdAgenda.Append(String.Format(" <td class=' '>{0} </td> ", item.TempoEstimado));
            //        grdAgenda.Append(String.Format(" <td class=' '>{0}</td> ", item.Cliente));
            //        grdAgenda.Append(String.Format(" <td class=' '>{0}</td> ", item.Celular));
            //        grdAgenda.Append(String.Format(" <td class=' '>{0}</td> ", item.Efetivado));
            //        grdAgenda.Append(" <td class=' last'><a href = '#'> Ver </a> ");
            //        grdAgenda.Append(" </td>");
            //        grdAgenda.Append(" </tr> ");
            //    }

            //    corpoAgenda.InnerHtml = grdAgenda.ToString();
            //}

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string dt = Request.Form[txtDate.UniqueID];
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Selected Date: " + dt + "');", true);
        }

        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        [WebMethod()]
        public static string AlteraStatusSessao(string sessao)
        {
            string result = "";

            try
            {
                string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

                SqlConnection conn = new SqlConnection(conecta);

                //string sql = "Delete From tab_agenda "
                //        + " where IdAgenda = '" + sessao + "' ";

                //SqlCommand cmd = new SqlCommand(sql, conn);

                conn.Open();

                //cmd.ExecuteNonQuery();

                conn.Close();

                result = "OK";

            }
            catch (Exception)
            {
                result = "NOK";
                throw;
            }


            return result;
        }



        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        [WebMethod()]
        public static string ExcluiSessao(string sessao)
        {
            string result = "";

            try
            {
                string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

                SqlConnection conn = new SqlConnection(conecta);

                string sql = "Delete From tab_agenda "
                        + " where IdAgenda = '" + sessao + "' ";

                SqlCommand cmd = new SqlCommand(sql, conn);

                conn.Open();

                cmd.ExecuteNonQuery();

                conn.Close();

                result = "OK";

            }
            catch (Exception)
            {
                result = "NOK";
                throw;
            }


            return result;
        }

        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        [WebMethod()]
        public static string ConsultaAgenda(string DataServico)
        {
            //List<Agendas> ConsultarAgenda = new AgendaController().ConsultarAgenda(DataServico);

            //JavaScriptSerializer js = new JavaScriptSerializer();

            //return js.Serialize(ConsultarAgenda);
            //return null;



            List<Agendas> lstAgenda = new List<Agendas>();
            lstAgenda.Clear();

            string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select b.idAgenda, b.DataServico, a.Hora, b.TempoEstimado, b.Cliente, b.Celular, b.Efetuado  "
                        + " From tab_hora a "
                        + " left join tab_Agenda b "
                        + " on a.hora = b.hora "
                        + " where b.DataServico = '" + DataServico + "' "
                        + " order by a.hora";


            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader retAgenda = cmd.ExecuteReader();

            while (retAgenda.Read())
            {
                Agendas agenda = new Agendas();
                agenda.IdAgenda = Convert.ToInt32(retAgenda["idAgenda"].ToString());
                agenda.DataServico = Convert.ToDateTime(retAgenda["DataServico"].ToString());
                agenda.Hora = retAgenda["Hora"].ToString();
                agenda.TempoEstimado = retAgenda["TempoEstimado"].ToString();
                agenda.Cliente = retAgenda["Cliente"].ToString();
                agenda.Celular = retAgenda["Celular"].ToString();
                agenda.Efetivado = retAgenda["Efetuado"].ToString();

                lstAgenda.Add(agenda);
            }

            //JavaScriptSerializer js = new JavaScriptSerializer();

            //string result = js.Serialize(lstAgenda);

            var jsonSerializer = new JavaScriptSerializer();
            string result = jsonSerializer.Serialize(lstAgenda);


            conn.Close();

            return result;
        }

    }
}