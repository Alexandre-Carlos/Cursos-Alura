using StudioProjeto.DAO;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Controller
{
    public class ClienteController
    {
        ClienteDB ClientesDB = new ClienteDB();

        public Clientes InserirCliente(string nomecompleto, string cpf, string telefone, string endereco, string bairro, string cep, string sexo, string datanascimento, string foto)
        {
            return new ClienteDB().InsertCliente(nomecompleto, cpf, telefone, endereco, bairro, cep, sexo, datanascimento, foto);
        }

        public Clientes AlteraCliente(string idCliente, string nomecompleto, string cpf, string telefone, string endereco, string bairro, string cep, string sexo, string datanascimento, string foto)
        {
            return new ClienteDB().AlterarCliente(idCliente, nomecompleto, cpf, telefone, endereco, bairro, cep, sexo, datanascimento, foto);
        }

        public List<Clientes> ConsultarClientes()
        {
            return new ClienteDB().ConsultarClientes();
        }

        public List<Clientes> ObterClienteId(string idCliente)
        {
            return new ClienteDB().ObterClienteId(idCliente);
        }

        public List<ComboCliente> PopulaCliente()
        {
            return new ClienteDB().PopulaCliente();
        }

        public ClienteController() { }
    }
}
