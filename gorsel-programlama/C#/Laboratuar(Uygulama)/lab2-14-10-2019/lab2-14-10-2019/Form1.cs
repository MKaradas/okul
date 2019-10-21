using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace lab2_14_10_2019
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

        private void maskedTextBox2_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Yolcu Bilgileri Kaydedildi.");
            listBox1.Items.Add("Nereden : "+comboBox2.Text+ " Nereye: "+comboBox1.Text+" Tarih : "+dateTimePicker1.Text+" Saat: "+maskedTextBox4.Text+" Ad Soyad: "+textBox1.Text+" TC "+maskedTextBox1.Text+" Telefon "+maskedTextBox2.Text);
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
    }
}
