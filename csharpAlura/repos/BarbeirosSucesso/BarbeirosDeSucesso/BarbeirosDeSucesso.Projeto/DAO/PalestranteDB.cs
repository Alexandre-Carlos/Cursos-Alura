using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.DAO
{
    public class PalestranteDB : Banco
    {
        internal Palestrante InserirPalestrante(string nome, string especialidade, string telefone, string descricao, string foto, string ativo)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO PALESTRANTES (Nome, Especialidade, Telefone, Descricao, Foto, Ativo, DataCadastro) " +
                "values (@nome, @especialidade, @telefone, @descricao, @foto, @ativo, GETDATE())";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@nome", nome));
            comando.Parameters.Add(new SqlParameter("@especialidade", especialidade));
            comando.Parameters.Add(new SqlParameter("@telefone", telefone));
            comando.Parameters.Add(new SqlParameter("@descricao", descricao));
            comando.Parameters.Add(new SqlParameter("@foto", foto));
            comando.Parameters.Add(new SqlParameter("@ativo", ativo));
            //comando.Parameters.Add(new SqlParameter("DataCadastro", DateTime.Now.Date));
            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
                    //"Ocorreu um erro na gravação do palestrante");
            }

            return null;
        }

        public List<Palestrante> ConsultarPalestrantes()
        {
            //    List<Palestrante> lstPalestrantes = new List<Palestrante>();
            //    SqlConnection conn = new SqlConnection(conecta);

            //    string sql = "SELECT * FROM PALESTRANTE ORDER BY ativo";
            //    SqlCommand cmd = new SqlCommand(sql, conn);

            //    try
            //    {
            //        conn.Open();
            //        SqlDataReader listaTest = cmd.ExecuteReader();

            //        while (listaTest.Read())
            //        {
            //            Palestrante palestrantes = new Palestrante();
            //            palestrantes.Codigo = Convert.ToInt32(listaTest["IdPalestrante"].ToString());
            //            palestrantes.Nome = listaTest["Nome"].ToString();
            //            palestrantes.Especialidade = listaTest["Especialidade"].ToString();
            //            palestrantes.Telefone = listaTest["Telefone"].ToString();
            //            palestrantes.Descricao = listaTest["Descricao"].ToString();
            //            palestrantes.Foto = listaTest["Foto"].ToString();
            //            palestrantes.Ativo = listaTest["Ativo"].ToString();

            //            palestrantes.DataCadastro = Convert.ToDateTime(listaTest["DataCadastro"].ToString());

            //            lstPalestrantes.Add(palestrantes);
            //        }
            //    }
            //    catch (Exception)
            //    {
            //        throw new Exception("Problema para acessar a base de dados");
            //    }
            //    finally
            //    {
            //        conn.Close();
            //    }

            //    return lstPalestrantes;
            //}


            List<Palestrante> lstPalestrantes = new List<Palestrante>();

            string sql = "SELECT * FROM PALESTRANTES ORDER BY ativo";

            //var queryString = "SELECT * FROM PALESTRANTES ORDER BY status";

            StringBuilder errorMessages = new StringBuilder();

            //SqlConnection conn = new SqlConnection(conecta);

            using (SqlConnection connection = new SqlConnection(conecta))
            {
                    var errorMsg = "";
                SqlCommand command = new SqlCommand(sql, connection);
                try
                {
                    command.Connection.Open();
                    command.ExecuteNonQuery();
                    
                    SqlDataReader listaTest = command.ExecuteReader();

                    while (listaTest.Read())
                    {

                        Palestrante palestrantes = new Palestrante();
                        palestrantes.Codigo = Convert.ToInt32(listaTest["IdPalestrante"].ToString());
                        palestrantes.Nome = listaTest["Nome"].ToString();
                        palestrantes.Especialidade = listaTest["Especialidade"].ToString();
                        palestrantes.Telefone = listaTest["Telefone"].ToString();
                        palestrantes.Descricao = listaTest["Descricao"].ToString();
                        palestrantes.Foto = listaTest["Foto"].ToString();
                        palestrantes.Ativo = listaTest["Ativo"].ToString();

                        palestrantes.DataCadastro = Convert.ToDateTime(listaTest["DataCadastro"].ToString());

                        lstPalestrantes.Add(palestrantes);
                    }

                }
                catch (SqlException ex)
                {
                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                         errorMsg = ("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    throw new Exception(errorMsg.ToString());
                   //Console.Out.WriteAsync(errorMsg);
                    
                }
            }
            return lstPalestrantes;
        }


            public List<Palestrante> ObterPalestranteId(int codigo)
        {
            List<Palestrante> itemPalestrante = new List<Palestrante>();

            SqlConnection conn = new SqlConnection(conecta);

            string sql = "SELECT * FROM PALESTRANTES WHERE IdPalestrante = @codigo";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@codigo", codigo));

            try
            {
                conn.Open();
                SqlDataReader listaTest = cmd.ExecuteReader();

                if(listaTest.Read())
                { 
                Palestrante palestrante = new Palestrante();
                    
                palestrante.Codigo = Convert.ToInt32(listaTest["IdPalestrante"].ToString());
                palestrante.Nome = listaTest["Nome"].ToString();
                palestrante.Especialidade = listaTest["Especialidade"].ToString();
                palestrante.Telefone = listaTest["Telefone"].ToString();
                palestrante.Descricao = listaTest["Descricao"].ToString();
                palestrante.Foto = listaTest["Foto"].ToString();
                palestrante.Ativo = listaTest["Ativo"].ToString();
                palestrante.DataCadastro = Convert.ToDateTime(listaTest["DataCadastro"].ToString());

                itemPalestrante.Add(palestrante);
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

            return itemPalestrante;
        }

        public Palestrante AprovarPalestrante(int codigo, string nome, string especialidade, string telefone, string descricao, string foto)
        {
            

            
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "UPDATE PALESTRANTES SET Nome = @nome, Especialidade = @especialidade, Telefone = @telefone, Descricao = @descricao, Foto = @foto WHERE IdPalestrante = @codigo";

            SqlCommand comando = new SqlCommand(sqlQuery, conn);

            comando.Parameters.Add(new SqlParameter("@codigo", codigo));
            comando.Parameters.Add(new SqlParameter("@nome", nome));
            comando.Parameters.Add(new SqlParameter("@especialidade", especialidade));
            comando.Parameters.Add(new SqlParameter("@telefone", telefone));
            comando.Parameters.Add(new SqlParameter("@descricao", descricao));
            comando.Parameters.Add(new SqlParameter("@foto", foto));
            //comando.Parameters.Add(new SqlParameter("@ativo", ativo));
            //comando.Parameters.Add(new SqlParameter("DataCadastro", DateTime.Now.Date));
            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
                //"Ocorreu um erro na gravação do palestrante");
            }

            return null;
        }

        public Palestrante ExcluirPalestrante(int codigo)
        {
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "DELETE PALESTRANTES WHERE IdPalestrante = @codigo";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@codigo", codigo);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao excluir o palestrante.");
            }
            finally
            {
                conn.Close();
            }

            return null;
        }


        internal List<Palestrante> ObterPalestrantesAprovados()
        {
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "SELECT * FROM PALESTRANTES WHERE ativo = 'sim'";

            SqlCommand cmd = new SqlCommand(sql, conn);
            List<Palestrante> listaPalestrantes = new List<Palestrante>();

            try
            {
                conn.Open();

                SqlDataReader lista = cmd.ExecuteReader();


                while (lista.Read())
                {

                    Palestrante palestrantes = new Palestrante();

                    palestrantes.Codigo = Convert.ToInt32(lista["IdPalestrante"].ToString());
                    palestrantes.Nome = lista["Nome"].ToString();
                    palestrantes.Especialidade = lista["Especialidade"].ToString();
                    palestrantes.Telefone = lista["Telefone"].ToString();
                    palestrantes.Descricao = lista["Descricao"].ToString();
                    palestrantes.Foto = lista["Foto"].ToString();
                    palestrantes.Ativo = lista["Ativo"].ToString();
                    palestrantes.DataCadastro = Convert.ToDateTime(lista["DataCadastro"].ToString());

                    listaPalestrantes.Add(palestrantes);
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

            return listaPalestrantes;
        }

    }
}