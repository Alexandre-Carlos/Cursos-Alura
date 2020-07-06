namespace CursoWindowsForm
{
    partial class Frm_HelloWorld
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Frm_HelloWorld));
            this.lbl_Mensagem = new System.Windows.Forms.Label();
            this.Btn_Sair = new System.Windows.Forms.Button();
            this.Txt_Mensagem = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lbl_Mensagem
            // 
            this.lbl_Mensagem.AutoSize = true;
            this.lbl_Mensagem.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Mensagem.Location = new System.Drawing.Point(13, 13);
            this.lbl_Mensagem.Name = "lbl_Mensagem";
            this.lbl_Mensagem.Size = new System.Drawing.Size(255, 24);
            this.lbl_Mensagem.TabIndex = 0;
            this.lbl_Mensagem.Text = "Visual Studio .Net Version";
            // 
            // Btn_Sair
            // 
            this.Btn_Sair.Location = new System.Drawing.Point(615, 415);
            this.Btn_Sair.Name = "Btn_Sair";
            this.Btn_Sair.Size = new System.Drawing.Size(173, 23);
            this.Btn_Sair.TabIndex = 1;
            this.Btn_Sair.Text = "Fechar a Aplicação";
            this.Btn_Sair.UseVisualStyleBackColor = true;
            this.Btn_Sair.Click += new System.EventHandler(this.Btn_Sair_Click);
            // 
            // Txt_Mensagem
            // 
            this.Txt_Mensagem.Location = new System.Drawing.Point(13, 46);
            this.Txt_Mensagem.Name = "Txt_Mensagem";
            this.Txt_Mensagem.Size = new System.Drawing.Size(255, 22);
            this.Txt_Mensagem.TabIndex = 2;
            this.Txt_Mensagem.TextChanged += new System.EventHandler(this.Txt_Mensagem_TextChanged);
            // 
            // Frm_HelloWorld
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Txt_Mensagem);
            this.Controls.Add(this.Btn_Sair);
            this.Controls.Add(this.lbl_Mensagem);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Frm_HelloWorld";
            this.Text = "Hell World";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbl_Mensagem;
        private System.Windows.Forms.Button Btn_Sair;
        private System.Windows.Forms.TextBox Txt_Mensagem;
    }
}

