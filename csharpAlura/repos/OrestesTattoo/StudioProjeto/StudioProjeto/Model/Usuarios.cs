using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Model
{
    public class Usuarios
    {
        public Usuarios() { _codigo = 0; }
        #region Propriedade Usuario
        private int _codigo;
        public int Codigo
        {
            get { return _codigo; }
            set { _codigo = value; }
        }

        private string _nomeCompleto;
        public string NomeCompleto
        {
            get { return _nomeCompleto; }
            set { _nomeCompleto = value; }
        }

        private string _cpf;
        public string Cpf
        {
            get { return _cpf; }
            set { _cpf = value; }
        }

        private string _login;
        public string Login
        {
            get { return _login; }
            set { _login = value; }
        }

        private string _pswd;
        public string Pswd
        {
            get { return _pswd; }
            set { _pswd = value; }
        }

        private string _confpswd;
        public string Confpswd
        {
            get { return _confpswd;}
            set { _confpswd = value; }
        }
        private string _sexo;
        public string Sexo
        {
            get { return _sexo; }
            set { _sexo = value; }
        }

        private string _foto;
        public string Foto
        {
            get { return _foto; }
            set { _foto = value; }
        }
        private string _ativo;
        public string Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }
        private DateTime _dataCadastro;
        public DateTime DataCadastro
        {
            get { return _dataCadastro; }
            set { _dataCadastro = value; }
        }
        #endregion
    }
}
