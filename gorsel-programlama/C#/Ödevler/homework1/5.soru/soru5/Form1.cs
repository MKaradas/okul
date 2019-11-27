using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace soru5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "Hesap Makinesi";
        }

        double sayi1=0, sayi2=0, sonuc=0;
        char islemBilgisi = ' ';
        private void button5_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "5";
            }
            else
            {
                textBox1.Text += "5";
            }
        }

        private void button9_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "9";
            }
            else
            {
                textBox1.Text += "9";
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "8";
            }
            else
            {
                textBox1.Text += "8";
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "7";
            }
            else
            {
                textBox1.Text += "7";
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "6";
            }
            else
            {
                textBox1.Text += "6";
            }
        }

        private void button10_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "0";
            }
            else
            {
                textBox1.Text += "0";
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "4";
            }
            else
            {
                textBox1.Text += "4";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "3";
            }
            else
            {
                textBox1.Text += "3";
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "2";
            }
            else
            {
                textBox1.Text += "2";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0")
            {
                textBox1.Text = "1";
            }
            else
            {
                textBox1.Text += "1";
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button16_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            sayi1 = 0;
            sayi2 = 0;
            sonuc = 0;
        }

        private void button12_Click(object sender, EventArgs e)
        {
            islemBilgisi = '+';
            sayi1 = Convert.ToDouble(textBox1.Text);
            textBox1.Text = "";
        }

        private void button11_Click(object sender, EventArgs e)
        {
            islemBilgisi = '*';
            sayi1 = Convert.ToDouble(textBox1.Text);
            textBox1.Text = "";  
        }

        private void button13_Click(object sender, EventArgs e)
        {
            islemBilgisi = '/';
            sayi1 = Convert.ToDouble(textBox1.Text);
            textBox1.Text = "";
        }

        private void button14_Click(object sender, EventArgs e)
        {
            islemBilgisi = '-';
            sayi1 = Convert.ToDouble(textBox1.Text);
            textBox1.Text = "";
        }

        private void button15_Click(object sender, EventArgs e)
        {
            if(textBox1.Text!="")
            {
                sayi2 = Convert.ToDouble(textBox1.Text);
                switch (islemBilgisi)
                {
                    case '+':
                        sonuc = sayi1 + sayi2;
                        textBox1.Text = sonuc.ToString();
                        break;
                    case '-':
                        sonuc = sayi1 - sayi2;
                        textBox1.Text = sonuc.ToString();
                        break;
                    case '*':
                        sonuc = sayi1 * sayi2;
                        textBox1.Text = sonuc.ToString();
                        break;
                    case '/':
                        sonuc = sayi1 / sayi2;
                        textBox1.Text = sonuc.ToString();
                        break;
                    default:
                        MessageBox.Show("Lutfen bir islem seciniz!!");
                        break;
                }
            }
            else
            {
                MessageBox.Show("Lutfen Sayi Giriniz!");
            }
          
        }
    }
}
