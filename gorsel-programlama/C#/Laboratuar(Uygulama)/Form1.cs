using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _23_12_2019_uyg1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "Sıralama İşlemleri";
            listBox1.Text = "";
            listBox2.Text = "";
            listBox3.Text = "";
            listBox4.Text = "";
        }

        int[] dizi = new int[10];
        
        private void button1_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            for (int i = 0; i < 10; i++) {
                dizi[i] = rnd.Next(1,100);//1ile 100 arasında 10 sayı
            }
            
        }
        
        private void button2_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            listBox2.Items.Clear();
            listBox3.Items.Clear();
            listBox4.Items.Clear();
            for (int i=0;i<10;i++)
            {
                listBox1.Items.Add(dizi[i]);
            }
            System.Array.Reverse(dizi);//hazır fonksiyon diziyi ters çevirir
            for (int j=0;j<10; j++)
            {
                listBox2.Items.Add(dizi[j]);
            }
            for (int z=0; z<10;z++)
            {
                System.Array.Sort(dizi);
                listBox3.Items.Add(dizi[z]);
            }
            System.Array.Reverse(dizi);
            foreach (int sayi in dizi)
            {
                listBox4.Items.Add(sayi);
            }
        }
    }
}
