using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace SLAMpro2_MARX.cs
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            
        }

        private void seConnecter_Click(object sender, EventArgs e)
        {
            // IMAGE "se connecter"
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // BOUTON pour passer à la PAGE SUIVANTE 



            Form2 Form2 = new Form2();
            Form2.Show();

            //fermer la fenêtre du form1
            this.Hide();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            // A ECRIRE mdp
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            // A ECRIRE id
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void toolTip1_Popup(object sender, PopupEventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {
            // TEXTE id
        }

        private void label2_Click(object sender, EventArgs e)
        {
            // TEXTE mdp
        }
    }
}
