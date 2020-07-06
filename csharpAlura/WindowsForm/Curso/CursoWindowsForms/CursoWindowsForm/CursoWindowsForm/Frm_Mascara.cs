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
    public partial class Frm_Mascara : Form
    {
        public Frm_Mascara()
        {
            InitializeComponent();
        }

        private void Btn_Hora_Click(object sender, EventArgs e)
        {
            string mascara = "00:00";
            DefineMascara(mascara);
        }



        private void Btn_Cep_Click(object sender, EventArgs e)
        {
            string mascara = "00000-000";
            DefineMascara(mascara);
        }

        private void Btn_VerConteudo_Click(object sender, EventArgs e)
        {
            Lbl_Conteudo.Text = Msk_TextBox.Text;
        }

        private void Btn_Data_Click(object sender, EventArgs e)
        {
            string mascara = "00/00/0000";
            DefineMascara(mascara);
        }


        private void Btn_Telefone_Click(object sender, EventArgs e)
        {
            string mascara = "(00) 00000-0000";
            DefineMascara(mascara);
        }

        private void Btn_Moeda_Click(object sender, EventArgs e)
        {
            string mascara = "$ 000,000,000.00";
            DefineMascara(mascara);
        }
        private void Btn_Senha_Click(object sender, EventArgs e)
        {

            
            string mascara = "000000";
            DefineMascara(mascara);
        }
        private void DefineMascara(string mascara)
        {
            if (mascara == "000000")
            {
                Msk_TextBox.UseSystemPasswordChar = true;
            }
            else
            {
                Msk_TextBox.UseSystemPasswordChar = false;
            }
            Lbl_Conteudo.Text = "";
            Msk_TextBox.Mask = mascara;
            Lbl_MascaraAtiva.Text = Msk_TextBox.Mask;
            Msk_TextBox.Text = "";
            Msk_TextBox.Focus();

        }
    }

}
