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
    public partial class Frm_ValidaSenha : Form
    {

        bool VerSenhaTxt = false;
        public Frm_ValidaSenha()
        {
            InitializeComponent();
        }

        private void Btn_Reset_Click(object sender, EventArgs e)
        {
            TxtSenha.Text = "";
            Lbl_Resultado.Text = "";
        }

        private void TxtSenha_KeyDown(object sender, KeyEventArgs e)
        {
            ChecaForcaSenha verifica = new ChecaForcaSenha();
            ChecaForcaSenha.ForcaDaSenha forca;
            forca = verifica.GetForcaDaSenha(TxtSenha.Text);

            Lbl_Resultado.Text = forca.ToString();

            if (Lbl_Resultado.Text == "Inaceitavel" | Lbl_Resultado.Text == "Fraca")
            {
                Lbl_Resultado.ForeColor = Color.Red;
            }
            if (Lbl_Resultado.Text == "Aceitavel")
            {
                Lbl_Resultado.ForeColor = Color.Blue;
            }
            if (Lbl_Resultado.Text == "Forte")
            {
                Lbl_Resultado.ForeColor = Color.Blue;
            }
            if (Lbl_Resultado.Text == "Segura")
            {
                Lbl_Resultado.ForeColor = Color.Green;
            }

        }

        private void btn_VerSenha_Click(object sender, EventArgs e)
        {
            if (!VerSenhaTxt)
            {
                TxtSenha.PasswordChar = '\0'; //caracter vazio

                VerSenhaTxt = true;

                btn_VerSenha.Text = "Esconder Senha";
            }
            else
            {
                TxtSenha.PasswordChar = '*'; //caracter vazio

                VerSenhaTxt = false;

                btn_VerSenha.Text = "Ver Senha";
                
            }
           
        }
    }
}
