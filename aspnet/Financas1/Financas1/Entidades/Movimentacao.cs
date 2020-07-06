using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Financas1.Entidades
{
    public class Movimentacao
    {
        public int Id { get; set; }

        public decimal Valor { get; set; }

        public DateTime Date { get; set; }

        public Tipo Tipo { get; set; }

        public int UsuarioId { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}