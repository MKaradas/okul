using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace soru1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "DereceDönüştürme";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double deger = Convert.ToDouble(textBox1.Text);
            double sonuc = deger * 9 / 5 + 32;
            textBox2.Text = sonuc.ToString() + " F";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            double deger = Convert.ToDouble(textBox1.Text);
            double sonuc = (deger - 32)*5 / 9;
            textBox2.Text = sonuc.ToString() + " C";
        }
    }
}
