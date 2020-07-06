using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace StudioProjeto.DAO
{
    internal class UsuarioDB : Banco
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        internal Usuarios Autenticar(string login, string senha)
        {
            ComandoSQL.Parameters.Clear();
            ComandoSQL.CommandText = "SELECT * FROM TAB_USUARIOS WHERE UserLogin = @login and UserSenha = @senha";
            ComandoSQL.Parameters.AddWithValue("@login", login);
            ComandoSQL.Parameters.AddWithValue("@senha", senha);

            DataTable dt = ExecutaSelect();
            if (dt != null && dt.Rows.Count > 0)
            {
                Usuarios user = new Usuarios();
                user.Codigo = Convert.ToInt32(dt.Rows[0]["IdUser"]);
                user.Login = dt.Rows[0]["UserLogin"].ToString();
                user.Pswd = dt.Rows[0]["UserSenha"].ToString();
                return user;
            }
            else
                return null;
        }

        internal Usuarios InserirUsuario(string nome, string cpf, string login, string senha, string csenha, string sexo, string foto, string ativo)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO TAB_USUARIOS(NomeCompleto, CPF, UserLogin, UserSenha, UserConfSenha, UserSexo, UserFoto, ativo) VALUES (@nomeCompleto, @cpf, @Login, @Senha, @ConfSenha, @Sexo, @foto, @ativo)";
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

            string sql = "Select * from TAB_USUARIOS";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                Usuarios usuario = new Usuarios();
                usuario.Codigo = Convert.ToInt32(leitor["IdUser"].ToString());
                usuario.NomeCompleto = leitor["NomeCompleto"].ToString();
                usuario.Cpf = leitor["CPF"].ToString();
                usuario.Login = leitor["UserLogin"].ToString();
                usuario.Pswd = leitor["UserSenha"].ToString();
                usuario.Confpswd = leitor["UserConfSenha"].ToString();
                usuario.Sexo = leitor["UserSexo"].ToString();
                usuario.Foto = leitor["UserFoto"].ToString();
                usuario.Ativo = leitor["Ativo"].ToString();
                usuario.DataCadastro = Convert.ToDateTime(leitor["DataCadastro"].ToString());

                lstUSuarios.Add(usuario);
            }

            conn.Close();
            
            return lstUSuarios;
        }
    }
}
