using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.DAO

{
    internal class UsuarioDB : Banco
    {
        //string conecta = System.Configuration.ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        internal Usuarios Autenticar(string login, string senha)
        {
            ComandoSQL.Parameters.Clear();
            ComandoSQL.CommandText = "SELECT * FROM USUARIOS WHERE Login = @login and Senha = @senha";
            ComandoSQL.Parameters.AddWithValue("@login", login);
            ComandoSQL.Parameters.AddWithValue("@senha", senha);

            DataTable dt = ExecutaSelect();
            if (dt != null && dt.Rows.Count > 0)
            {
                Usuarios user = new Usuarios();
                user.Codigo = Convert.ToInt32(dt.Rows[0]["UserId"]);
                user.Login = dt.Rows[0]["Login"].ToString();
                user.Pswd = dt.Rows[0]["Senha"].ToString();
                return user;
            }
            else
                return null;
        }

        internal Usuarios InserirUsuario(string nome, string cpf, string login, string senha, string csenha, string sexo, string foto, string ativo)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO USUARIOS(NomeCompleto, CPFUser, Login, Senha, Sexo, Foto, Ativo) VALUES (@nomeCompleto, @cpf, @Login, @Senha,  @Sexo, @foto, @ativo)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@nomeCompleto", nome));
            comando.Parameters.Add(new SqlParameter("@cpf", cpf));
            comando.Parameters.Add(new SqlParameter("@Login", login));
            comando.Parameters.Add(new SqlParameter("@Senha", senha));
            comando.Parameters.Add(new SqlParameter("@ConfSenha", csenha));
            comando.Parameters.Add(new SqlParameter("@Sexo", sexo));
            comando.Parameters.Add(new SqlParameter("@foto", foto));
            comando.Parameters.Add(new SqlParameter("@ativo", ativo));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação dos dados!" + e);
            }

            return null;

        }

        public List<Usuarios> ConsultarUsuarios()
        {

            List<Usuarios> lstUSuarios = new List<Usuarios>();
            //List<Usuarios> lstUSuarios = new List<Usuarios>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * from USUARIOS";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                Usuarios usuario = new Usuarios();
                usuario.Codigo = Convert.ToInt32(leitor["UserId"].ToString());
                usuario.NomeCompleto = leitor["NomeCompleto"].ToString();
                usuario.Cpf = leitor["CPFUser"].ToString();
                usuario.Login = leitor["Login"].ToString();
                usuario.Pswd = leitor["Senha"].ToString();
                usuario.Sexo = leitor["Sexo"].ToString();
                usuario.Foto = leitor["Foto"].ToString();
                usuario.Ativo = leitor["Ativo"].ToString();
                usuario.DataCadastro = Convert.ToDateTime(leitor["DataCadastro"].ToString());

                lstUSuarios.Add(usuario);
            }

            conn.Close();

            return lstUSuarios;
        }
    }
}