using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg2_14_11_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string str = textBox1.Text;
            int toplam = 0;
            for (int i = 0; i <str.Length; i++)
            {
                if (Char.IsNumber(str,i)==true)
                {
                    textBox2.Text += str[i]+"+";
                    toplam += Convert.ToInt32(str[i].ToString());
                }
            }

            if (toplam == 0)
            {
                textBox2.Text = "Girilen Metinde Hic Numerik Deger Yoktur.";
            }
            else
            {
               // textBox2.Text = textBox2.Text.Remove(textBox2.Text.Length);//burası güncellenecektir.
                textBox2.Text += " = " + toplam.ToString();
            }

        }
    }
}
