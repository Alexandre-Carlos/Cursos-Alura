using StudioProjeto.DAO;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Controller
{
    public class UsuarioController
    {
        UsuarioDB UserDb = new UsuarioDB();

        public Usuarios Autenticar(string login, string senha)
        {
            if (login != null && senha.Trim().Length > 0)
                return new UsuarioDB().Autenticar(login, senha);
            else
                return null;
        }

        public Usuarios InserirUsuario(string nome, string cpf, string login, string senha, string confsenha, string sexo, string foto, string ativo)
        {
            return new UsuarioDB().InserirUsuario(nome, cpf, login, senha, confsenha, sexo,  foto, ativo);
        }

        public List<Usuarios> ConsultarUsuario()
        {
            return new UsuarioDB().ConsultarUsuarios();
        }

        public UsuarioController() { }
    }
}
