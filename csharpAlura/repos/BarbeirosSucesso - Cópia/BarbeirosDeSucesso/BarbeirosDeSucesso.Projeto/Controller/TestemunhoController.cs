using BarbeirosDeSucesso.Projeto.DAO;
using BarbeirosDeSucesso.Projeto.Model;
using System;
//using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.Controller
{
    public class TestemunhoController
    {
        TestemunhoDB TesteDB = new TestemunhoDB();
               
        public Testemunho InserirTestemunho(string nome, string tipo, string testemunho)
        {
            return new TestemunhoDB().InserirTestemunho(nome, tipo, testemunho);
        }

        public List<Testemunho> ConsultarTestemunhos()
        {
            return new TestemunhoDB().ConsultarTestemunhos();
        }

        public List<Testemunho> ObterTestemunhoId(int testemunhoId)
        {
            return new TestemunhoDB().ObterTestemunhoId(testemunhoId);
        }

        public Testemunho AprovarTestemunho(int testemunhoId)
        {
            return new TestemunhoDB().AprovarTestemunho(testemunhoId);
        }

        public Testemunho ExcluirTestemunho(int testemunhoId)
        {
            return new TestemunhoDB().ExcluirTestemunho(testemunhoId);
        }

        public TestemunhoController() { }

        public List<Testemunho> ObterTestemunhosAprovados()
        {
            return new TestemunhoDB().ObterTestemunhosAprovados();
        }
    }
}