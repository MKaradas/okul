using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace soru3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "İdeal Kilo Hesabı";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string ad = Convert.ToString(textBox1.Text);
            string soyad = Convert.ToString(textBox2.Text);
            double yas = Convert.ToDouble(textBox3.Text);
            double boy = Convert.ToDouble(textBox4.Text);
            double kilo = Convert.ToDouble(textBox6.Text);
            double idealkilo=0;
            string cinsiyet = Convert.ToString(comboBox1.Text);

            if (cinsiyet == "Erkek")
            {
                idealkilo = (boy-100 + yas/10) * 0.9;
                textBox8.Text = idealkilo.ToString();
            }
            else if (cinsiyet == "Kadın")
            {
                idealkilo = (boy - 100 + yas / 10) * 0.8;
                textBox8.Text = idealkilo.ToString();
            }

            if (kilo == idealkilo)
            {
                label9.Text = "Bravo İdeal kilodasınız";
            }
            else if (kilo < idealkilo)
            {
                label9.Text = "Zayıfsın "+(idealkilo-kilo)+" kilo almalısın!";
            }
            else if (kilo > idealkilo)
            {
                label9.Text = "Şişmansın " + (kilo - idealkilo) + " kilo zayıflamalısın!";
            }


        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox6.Text = "";
            textBox8.Text = "";
            comboBox1.Text = "";
            
        }
    }
}
