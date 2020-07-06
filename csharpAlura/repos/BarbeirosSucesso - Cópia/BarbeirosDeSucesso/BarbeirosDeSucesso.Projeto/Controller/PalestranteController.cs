using BarbeirosDeSucesso.Projeto.DAO;
using BarbeirosDeSucesso.Projeto.Model;
using System;
//using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.Controller
{
    public class PalestranteController
    {
        PalestranteDB TesteDB = new PalestranteDB();
        //(Nome, Especialidade, Telefone, Descricao, Foto, Ativo, DataCadastro)
        public Palestrante InserirPalestrante(string nome, string especialidade, string telefone, string descricao, string foto)
        {
            return new PalestranteDB().InserirPalestrante(nome, especialidade, telefone, descricao, foto);
        }

        public List<Palestrante> ConsultarPalestrantes()
        {
            return new PalestranteDB().ConsultarPalestrantes();
        }

        public List<Palestrante> ObterPalestranteId(int testemunhoId)
        {
            return new PalestranteDB().ObterPalestranteId(testemunhoId);
        }

        public Palestrante AprovarPalestrante(int palestranteId)
        {
            return new PalestranteDB().AprovarPalestrante(palestranteId);
        }


        public Palestrante ExcluirPalestrante(int testemunhoId)
        {
            return new PalestranteDB().ExcluirPalestrante(testemunhoId);
        }

        public PalestranteController() { }

        public List<Palestrante> ObterPalestranteAprovados()
        {
            return new PalestranteDB().ObterPalestrantesAprovados();
        }
    }
}