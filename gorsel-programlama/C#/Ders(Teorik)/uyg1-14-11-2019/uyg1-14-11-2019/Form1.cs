using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg1_14_11_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = richTextBox1.Text.Replace('A','é');
            richTextBox1.Text = richTextBox1.Text.Replace('B', 'i');
            richTextBox1.Text = richTextBox1.Text.Replace('C', 'ğ');
            richTextBox1.Text = richTextBox1.Text.Replace('D', 'Z');
            richTextBox1.Text = richTextBox1.Text.Replace('E', 'æ');
            richTextBox1.Text = richTextBox1.Text.Replace('F', 'Ö');
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = richTextBox1.Text.Replace('é', 'A');
            richTextBox1.Text = richTextBox1.Text.Replace('i', 'B');
            richTextBox1.Text = richTextBox1.Text.Replace('ğ', 'C');
            richTextBox1.Text = richTextBox1.Text.Replace('Z', 'D');
            richTextBox1.Text = richTextBox1.Text.Replace('æ','E');
            richTextBox1.Text = richTextBox1.Text.Replace('Ö', 'F');
        }
    }
}
