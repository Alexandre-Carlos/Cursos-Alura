using StudioProjeto.Funcoes;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.DAO
{
    internal class ServicoDB
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        public List<Servico> ConsultaPersonalizada(string DataInicio, string DataFim)
        {
            List<Servico> lstServico = new List<Servico>();

            SqlConnection conn = new SqlConnection(conecta);

            string sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente " +
                               " where serv.DataServico >= '" + DataInicio + "' " +
                               " and serv.DataServico <= '" + DataFim + "' ";

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                SqlDataReader todoPeriodo = comando.ExecuteReader();

                while (todoPeriodo.Read())
                {
                    Servico tdPeriodo = new Servico();
                    tdPeriodo.IdServicos = Convert.ToInt32(todoPeriodo["IdServicos"].ToString());
                    tdPeriodo.NomeCompleto = todoPeriodo["NomeCompleto"].ToString();
                    //tdPeriodo.CodCliente = Convert.ToInt32(todoPeriodo["CodCliente"].ToString());
                    tdPeriodo.DataServico = Convert.ToDateTime(todoPeriodo["DataServico"].ToString());
                    tdPeriodo.Valor = Convert.ToDecimal(todoPeriodo["Valor"].ToString());
                    tdPeriodo.TipoServico = todoPeriodo["TipoServico"].ToString();
                    tdPeriodo.ObsCliente = todoPeriodo["ObsCliente"].ToString();
                    tdPeriodo.ObsGerais = todoPeriodo["ObsGerais"].ToString();
                    tdPeriodo.FotoServico = todoPeriodo["FotoServico"].ToString();

                    lstServico.Add(tdPeriodo);
                }

                conn.Close();

                return lstServico;
            }
            catch (Exception e)
            {
                throw new Exception("Houve um erro na consulta" + e);
            }
        }



        public List<Servico> ConsultaPorCliente(int CodigoCliente)
        {
            List<Servico> lstServico = new List<Servico>();

            SqlConnection conn = new SqlConnection(conecta);

            string sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente " +
                               " where serv.CodCliente = '" + CodigoCliente + "' ";

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                SqlDataReader todoPeriodo = comando.ExecuteReader();

                while (todoPeriodo.Read())
                {
                    Servico tdPeriodo = new Servico();
                    tdPeriodo.IdServicos = Convert.ToInt32(todoPeriodo["IdServicos"].ToString());
                    tdPeriodo.NomeCompleto = todoPeriodo["NomeCompleto"].ToString();
                    //tdPeriodo.CodCliente = Convert.ToInt32(todoPeriodo["CodCliente"].ToString());
                    tdPeriodo.DataServico = Convert.ToDateTime(todoPeriodo["DataServico"].ToString());
                    tdPeriodo.Valor = Convert.ToDecimal(todoPeriodo["Valor"].ToString());
                    tdPeriodo.TipoServico = todoPeriodo["TipoServico"].ToString();
                    tdPeriodo.ObsCliente = todoPeriodo["ObsCliente"].ToString();
                    tdPeriodo.ObsGerais = todoPeriodo["ObsGerais"].ToString();
                    tdPeriodo.FotoServico = todoPeriodo["FotoServico"].ToString();

                    lstServico.Add(tdPeriodo);
                }

                conn.Close();

                return lstServico;
            }
            catch (Exception e)
            {
                throw new Exception("Houve um erro na consulta" + e);
            }
        }

        
            public List<Servico> ConsultaPorServico(int TipoServico)
        {
            List<Servico> lstServico = new List<Servico>();

            SqlConnection conn = new SqlConnection(conecta);

            string sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente " +
                               " where serv.TipoServico = '" + TipoServico + "' ";

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                SqlDataReader todoPeriodo = comando.ExecuteReader();

                while (todoPeriodo.Read())
                {
                    Servico tdPeriodo = new Servico();
                    tdPeriodo.IdServicos = Convert.ToInt32(todoPeriodo["IdServicos"].ToString());
                    tdPeriodo.NomeCompleto = todoPeriodo["NomeCompleto"].ToString();
                    //tdPeriodo.CodCliente = Convert.ToInt32(todoPeriodo["CodCliente"].ToString());
                    tdPeriodo.DataServico = Convert.ToDateTime(todoPeriodo["DataServico"].ToString());
                    tdPeriodo.Valor = Convert.ToDecimal(todoPeriodo["Valor"].ToString());
                    tdPeriodo.TipoServico = todoPeriodo["TipoServico"].ToString();
                    tdPeriodo.ObsCliente = todoPeriodo["ObsCliente"].ToString();
                    tdPeriodo.ObsGerais = todoPeriodo["ObsGerais"].ToString();
                    tdPeriodo.FotoServico = todoPeriodo["FotoServico"].ToString();

                    lstServico.Add(tdPeriodo);
                }

                conn.Close();

                return lstServico;
            }
            catch (Exception e)
            {
                throw new Exception("Houve um erro na consulta" + e);
            }
        }

        public string ExcluiRegistro(string registro)
        {
            try
            {
                SqlConnection conn = new SqlConnection(conecta);

                string sql = "Delete From tab_servicos "
                            + " where IdServicos = '" + registro + "' ";

                SqlCommand cmd = new SqlCommand(sql, conn);

                conn.Open();

                cmd.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception)
            {

                throw;
            }

            return null;
        }

        public List<Servico> todoPeriodo(string TipoConsulta)
        {

            string dataHoje = DateTime.Now.ToString("yyyy") + "-" + DateTime.Now.ToString("MM") + "-" + DateTime.Now.ToString("dd");

            List<Servico> lstServico = new List<Servico>();

            lstServico.Clear();

            SqlConnection conn = new SqlConnection(conecta);

            string sqlQuery = "";

            switch (TipoConsulta)
            {
                case "1":
                    sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente " +
                               " where serv.DataServico = '" + dataHoje + "' ";
                    break;
                case "2":
                    DateTime dtMais7 = DateTime.Today.AddDays(-7);
                    var dia7 = dtMais7.ToString("dd");
                    var mes7 = dtMais7.ToString("MM");
                    var ano7 = dtMais7.ToString("yyyy");
                    var dataMenosSete = ano7 + "-" + mes7 + "-" + dia7;

                    sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente " +
                               " where serv.DataServico <= '" + dataHoje + "' " +
                               " and serv.DataServico >= '" + dataMenosSete + "' ";
                    break;
                case "3":
                    DateTime dtMenos30 = DateTime.Today.AddDays(-30);
                    var dia30 = dtMenos30.ToString("dd");
                    var mes30 = dtMenos30.ToString("MM");
                    var ano30 = dtMenos30.ToString("yyyy");
                    var dataMenosTrinta = ano30 + "-" + mes30 + "-" + dia30;

                    sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente " +
                               " where serv.DataServico <= '" + dataHoje + "' " +
                               " and serv.DataServico >= '" + dataMenosTrinta + "' ";
                    break;
                case "5":
                    sqlQuery = " select serv.IdServicos, cli.NomeCompleto, serv.DataServico, serv.Valor, serv.TipoServico, serv.ObsCliente, serv.ObsGerais, serv.FotoServico " +
                               " from tab_servicos as serv " +
                               " inner join tab_clientes as cli " +
                               " on serv.CodCliente = cli.IdCliente ";
                    break;
                default:
                    break;
            }

            //string sqlQuery = "Select CodCliente, DataServico, Valor, TipoServico, ObsCliente, ObsGerais, FotoServico From TAB_SERVICOS";



            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                SqlDataReader todoPeriodo = comando.ExecuteReader();

                while (todoPeriodo.Read())
                {
                    Servico tdPeriodo = new Servico();
                    tdPeriodo.IdServicos = Convert.ToInt32(todoPeriodo["IdServicos"].ToString());
                    tdPeriodo.NomeCompleto = todoPeriodo["NomeCompleto"].ToString();
                    //tdPeriodo.CodCliente = Convert.ToInt32(todoPeriodo["CodCliente"].ToString());
                    tdPeriodo.DataServico = Convert.ToDateTime(todoPeriodo["DataServico"].ToString());
                    tdPeriodo.Valor = Convert.ToDecimal(todoPeriodo["Valor"].ToString());
                    tdPeriodo.TipoServico = todoPeriodo["TipoServico"].ToString();
                    tdPeriodo.ObsCliente = todoPeriodo["ObsCliente"].ToString();
                    tdPeriodo.ObsGerais = todoPeriodo["ObsGerais"].ToString();
                    tdPeriodo.FotoServico = todoPeriodo["FotoServico"].ToString();

                    lstServico.Add(tdPeriodo);
                }

                conn.Close();

                return lstServico;
            }
            catch (Exception e)
            {
                throw new Exception("Houve um erro na consulta" + e);
            }

        }

        internal Servico InsertServico(int codCliente, string dataServico, Decimal valor, string tipoServico, string obsCliente, string obsGerais, string fotoServico)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO TAB_SERVICOS (CodCliente, DataServico, Valor, TipoServico, ObsCliente, ObsGerais, FotoServico) VALUES (@codCliente, @dataServico, @valor, @tipoServico, @obsCliente, @obsGerais, @fotoServico)";

            string dia = dataServico.Substring(0, 2);
            string mes = dataServico.Substring(3, 2);
            string ano = dataServico.Substring(6, 4);
            string dataGrava = ano + "-" + mes + "-" + dia;

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@codCliente", codCliente));
            comando.Parameters.Add(new SqlParameter("@dataServico", dataGrava));
            comando.Parameters.Add(new SqlParameter("@valor", valor));
            comando.Parameters.Add(new SqlParameter("@tipoServico", tipoServico));
            comando.Parameters.Add(new SqlParameter("@obsCliente", obsCliente));
            comando.Parameters.Add(new SqlParameter("@obsGerais", obsGerais));
            comando.Parameters.Add(new SqlParameter("@fotoServico", fotoServico));


            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação do servico!" + e);
            }

            return null;
        }




    }
}
