
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank.SistemaAgencia
{
    public class ExtratorValorDeArgumentosURL
    {

        private readonly string _argumentos;

        public string URL { get; }


        public ExtratorValorDeArgumentosURL(string url)
        {

            if (String.IsNullOrEmpty(url))
            {
                throw new ArgumentException("O argumento url não pode ser nula ou vazia", nameof(url));

            }

            
            
            int indiceInterrogacao = url.IndexOf('?');
            _argumentos = url.Substring(indiceInterrogacao + 1);

            URL = url;
        }



        //moedaOrigem=real&moedaDestino=dolar

        public string GetValor(string nomeParametro)
        {
            string termo = nomeParametro.ToLower() + "=";
            string _argumentolower = _argumentos.ToLower();

            int indiceTermo = _argumentolower.IndexOf(termo);



            string resultado = _argumentolower.Substring(indiceTermo + termo.Length);

            int indiceEComercial = resultado.IndexOf('&');

            if (indiceEComercial < 0)
            {
                return resultado;
            }
            return resultado.Remove(indiceEComercial);




        }


    }
}
