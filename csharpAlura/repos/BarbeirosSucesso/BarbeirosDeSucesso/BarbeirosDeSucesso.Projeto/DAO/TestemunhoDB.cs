using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.DAO
{
    public class TestemunhoDB : Banco
    {
        internal Testemunho InserirTestemunho(string nome, string tipo, string testemunho)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO TESTEMUNHOS (Nome, Tipo, Testemunho, Status, DataInclusao) values (@nome, @tipo, @testemunho, 'AGUARDANDO', GETDATE())";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@nome", nome));
            comando.Parameters.Add(new SqlParameter("@tipo", tipo));
            comando.Parameters.Add(new SqlParameter("@testemunho", testemunho));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Ocorreu um erro na gravação do testemunho");
            }

            return null;
        }

        public List<Testemunho> ConsultarTestemunhos()
        {
            List<Testemunho> lstTestemunhos = new List<Testemunho>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "SELECT * FROM TESTEMUNHOS ORDER BY status";
            SqlCommand cmd = new SqlCommand(sql, conn);

            try
            {
                conn.Open();
                SqlDataReader listaTest = cmd.ExecuteReader();

                while (listaTest.Read())
                {
                    Testemunho testemunhos = new Testemunho();
                    testemunhos.Codigo = Convert.ToInt32(listaTest["IdTestemunho"].ToString());
                    testemunhos.Nome = listaTest["Nome"].ToString();
                    testemunhos.Tipo = listaTest["Tipo"].ToString();
                    testemunhos.TextTestemunho = listaTest["Testemunho"].ToString();
                    testemunhos.Status = listaTest["Status"].ToString();
                    testemunhos.DataInclusao = Convert.ToDateTime(listaTest["DataInclusao"].ToString());

                    lstTestemunhos.Add(testemunhos);
                }
            }
            catch (Exception)
            {
                throw new Exception("Problema para acessar a base de dados");
            }
            finally
            {
                conn.Close();
            }

            return lstTestemunhos;
        }

        public List<Testemunho> ObterTestemunhoId(int codigo)
        {
            List<Testemunho> itemTestemunho = new List<Testemunho>();

            SqlConnection conn = new SqlConnection(conecta);

            string sql = "SELECT * FROM TESTEMUNHOS WHERE IdTestemunho = @codigo";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@codigo", codigo));

            try
            {
                conn.Open();
                SqlDataReader listaTest = cmd.ExecuteReader();

                if(listaTest.Read())
                { 
                Testemunho testemunho = new Testemunho();

                testemunho.Codigo = Convert.ToInt32(listaTest["IdTestemunho"].ToString());
                testemunho.Nome = listaTest["Nome"].ToString();
                testemunho.Tipo = listaTest["Tipo"].ToString();
                testemunho.TextTestemunho = listaTest["Testemunho"].ToString();
                testemunho.Status = listaTest["Status"].ToString();
                testemunho.DataInclusao = Convert.ToDateTime(listaTest["DataInclusao"].ToString());

                itemTestemunho.Add(testemunho);
                }
               
            }
            catch (Exception ex)
            {
                throw new Exception("Problema para acessar a base de dados");
            }
            finally
            {
                conn.Close();
            }

            return itemTestemunho;
        }

        public Testemunho AprovarTestemunho(int codigo)
        {
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "UPDATE TESTEMUNHOS SET status = 'APROVADO' WHERE IdTestemunho = @codigo";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@codigo", codigo);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();

            }catch(Exception ex)
            {
                throw new Exception("Erro ao aprovar o testemunho.");
            }
            finally
            {
                conn.Close();
            }

            return null;
        }

        public Testemunho ExcluirTestemunho(int codigo)
        {
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "DELETE TESTEMUNHOS WHERE IdTestemunho = @codigo";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@codigo", codigo);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao excluir o testemunho.");
            }
            finally
            {
                conn.Close();
            }

            return null;
        }

        internal List<Testemunho> ObterTestemunhosAprovados()
        {
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "SELECT * FROM TESTEMUNHOS WHERE status = 'APROVADO'";

            SqlCommand cmd = new SqlCommand(sql, conn);
            List<Testemunho> listaTestemunhos = new List<Testemunho>();

            try
            {
                conn.Open();

                SqlDataReader lista = cmd.ExecuteReader();
                

                while (lista.Read())
                {
                    Testemunho testemunhos = new Testemunho();
                    testemunhos.Codigo = Convert.ToInt32(lista["IdTestemunho"].ToString());
                    testemunhos.Nome = lista["Nome"].ToString();
                    testemunhos.Tipo = lista["Tipo"].ToString();
                    testemunhos.TextTestemunho = lista["Testemunho"].ToString();
                    testemunhos.Status = lista["status"].ToString();
                    testemunhos.DataInclusao = Convert.ToDateTime(lista["DataInclusao"].ToString());

                    listaTestemunhos.Add(testemunhos);
                }

            }
            catch (Exception)
            {
                throw new Exception("Erro ao obter testemunhos aprovados.");
            }
            finally
            {
                conn.Close();
            }

            return listaTestemunhos;
        }
    }
}