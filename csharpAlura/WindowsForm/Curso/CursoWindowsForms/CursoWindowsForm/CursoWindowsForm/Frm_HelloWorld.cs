using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CursoWindowsForm
{
    public partial class Frm_HelloWorld : Form
    {
        public Frm_HelloWorld()
        {
            InitializeComponent();
        }

        private void Btn_Sair_Click(object sender, EventArgs e)
        {
            //Application.Exit();
            this.Close();
        }

        private void Txt_Mensagem_TextChanged(object sender, EventArgs e)
        {
            lbl_Mensagem.Text = Txt_Mensagem.Text;
        }
    }
}
