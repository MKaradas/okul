using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ornek2_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            button1.AutoSize =true;
            button2.AutoSize = true;
            button3.AutoSize = true;
            button1.Text = "Textboxa yaz";
            button2.Text = "sil";
            button3.Text = "kapat";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "Java elden gideyeah :(";
            textBox1.ForeColor = Color.Yellow;
            textBox1.BackColor = Color.Red;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox1.BackColor = Color;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
