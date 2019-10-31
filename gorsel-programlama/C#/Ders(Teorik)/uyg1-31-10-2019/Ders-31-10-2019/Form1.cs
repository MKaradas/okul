using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ders_31_10_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "Fibonacci Serisi";
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            


        }

        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Text = "";
            int sayi1 = 0;
            int sayi2 = 1;
            int arananSayi = Convert.ToInt32(textBox1.Text);
            int sonuc;
            //0,1,1,2,3,5,8,13,21
            // 0 +1 ->1 +1 ->
            listBox1.Items.Add(Convert.ToString(sayi1));
            listBox1.Items.Add(Convert.ToString(sayi2));
            for (int i = 1; i < arananSayi; i++)
            {
                sonuc = sayi1 + sayi2;
                sayi1 = sayi2;
                sayi2 = sonuc;
                listBox1.Items.Add(Convert.ToString(sonuc));
            }
        }
    }
}
