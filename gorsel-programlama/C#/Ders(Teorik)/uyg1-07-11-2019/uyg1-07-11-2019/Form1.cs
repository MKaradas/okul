using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg1_07_11_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "Fibonacci Hesapla";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int deger = Convert.ToInt32(textBox1.Text);
            int[] dizi = new int[deger];
            dizi[0] = 0;
            dizi[1] = 1;
            int i = 2;
            if (deger<2)
            {
                MessageBox.Show("Yanlış Değer Girdiniz!");
            }
            else { 
            for (i=2;i<dizi.Length;i++)
            {
                dizi[i] = dizi[i-1]+dizi[i-2];
            }
            MessageBox.Show("Serideki boyut -> "+deger+" sonuc -> "+dizi[deger-1]);
            }
        }
    }
}
