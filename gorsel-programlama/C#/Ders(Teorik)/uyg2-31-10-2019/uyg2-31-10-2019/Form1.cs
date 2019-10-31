using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg2_31_10_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Text = "";
            int sayi = Convert.ToInt32(textBox1.Text);
            int i = 1;
            while (sayi!=1)//sayi>1 de diyebiliriz.
            {
             if (sayi % 2 ==0)
            {
                sayi = sayi / 2;
            }
            else
            {
                sayi=sayi * 3 + 1;
            }
            
            listBox1.Items.Add(i+".adım: "+sayi);
            i++;
            }




        }
    }
}
