using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace soru2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "HarfNotuHesaplama";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            double vize1 = Convert.ToDouble(textBox1.Text);
            double vize2 = Convert.ToDouble(textBox2.Text);
            double final = Convert.ToDouble(textBox3.Text);
            double ortalama = 0;
            ortalama = (vize1 * 30 / 100 + vize2 * 30 / 100 + final * 40 / 100);
            //MessageBox.Show("Ortalama: "+ortalama+" Harf Notu: ");
            
            
            if ((vize1 > 100) || (vize1 < 0) || (vize2 > 100) || (vize2 < 0) || (final > 100) || (final < 0))
            {
                MessageBox.Show("Sınav değeri 0-100 arasında olmalıdır.");
            }
            
            else if (ortalama<50)
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: FF");
            }
            else if((ortalama <= 100) && (ortalama >= 90))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: AA");
            }
            else if ((ortalama <= 89) && (ortalama >= 85))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: BA");
            }
            else if ((ortalama <= 84) && (ortalama >= 80))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: BB");
            }
            else if ((ortalama <= 79) && (ortalama >= 75))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: CB");
            }
            else if ((ortalama <= 74) && (ortalama >= 65))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: CC");
            }
            else if ((ortalama <= 64) && (ortalama >= 60))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: DC");
            }
            else if ((ortalama <= 59) && (ortalama >= 50))
            {
                MessageBox.Show("Ortalama: " + ortalama + "Harf Notu: DD");
            }
        }
    }
}
