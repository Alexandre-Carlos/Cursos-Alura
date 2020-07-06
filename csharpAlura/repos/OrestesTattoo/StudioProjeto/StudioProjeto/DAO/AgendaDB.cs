using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace StudioProjeto.DAO
{
    internal class AgendaDB : Banco
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        internal Agendas GravarSessao(string DataServico, string Hora, string TempoEstimado, string Cliente, string Celular, string Efetivado)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO TAB_Agenda (DataServico, Hora, TempoEstimado, Cliente, Celular, Efetuado) values (@DataServico, @Hora, @TempoEstimado, @Cliente, @Celular, @Efetivado)";

            //string dia = DataServico.Substring(0, 2);
            //string mes = DataServico.Substring(3, 2);
            //string ano = DataServico.Substring(6, 4);
            //string dataGrava = ano + "-" + mes + "-" + dia;

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@DataServico", DataServico));
            comando.Parameters.Add(new SqlParameter("@Hora", Hora));
            comando.Parameters.Add(new SqlParameter("@TempoEstimado", TempoEstimado));
            comando.Parameters.Add(new SqlParameter("@Cliente", Cliente));
            comando.Parameters.Add(new SqlParameter("@Celular", Celular));
            comando.Parameters.Add(new SqlParameter("@Efetivado", Efetivado));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação da sessão!" + e);
            }

            return null;
        }

        public string ConsultarAgenda(string DataServico)
        {
            List<Agendas> lstAgenda = new List<Agendas>();

            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select b.idAgenda, b.DataServico, a.Hora, b.TempoEstimado, b.Cliente, b.Celular, b.Efetuado  "
                        + " From tab_hora a "
                        + " left join tab_Agenda b "
                        + " on a.hora = b.hora "
                        + " where b.DataServico = '"+ DataServico + "' " 
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

            var jsonSerializer = new JavaScriptSerializer();
            string myJson = jsonSerializer.Serialize(lstAgenda);

            conn.Close();

            return myJson;
        }

    }
}
