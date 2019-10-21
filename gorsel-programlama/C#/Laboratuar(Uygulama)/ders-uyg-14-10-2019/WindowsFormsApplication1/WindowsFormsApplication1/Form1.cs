using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            listBox1.Items.Add("Rota:"+ comboBox1.Text + "-" + comboBox2.Text);
            listBox1.Items.Add("Tarih:" + dateTimePicker1.Text
                + " Saat:" + maskedTextBox1.Text);
            listBox1.Items.Add("Yolcu Bilgileri:" + " Ad Soyad:"
                + textBox1.Text + " TC:" + maskedTextBox2.Text
                + " Telefon:" + maskedTextBox3.Text);
            MessageBox.Show("Kayıt Tamamlandı!!");
            textBox1.Text = "";
            maskedTextBox1.Text = "";
            maskedTextBox2.Text = "";
            maskedTextBox3.Text = "";
            comboBox1.Text = "";
            comboBox2.Text = "";


        }
    }
}
