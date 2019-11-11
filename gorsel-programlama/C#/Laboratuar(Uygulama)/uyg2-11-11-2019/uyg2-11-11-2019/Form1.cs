using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg2_11_11_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private int saat = 0, dakika = 0, saniye = 0;

        private void timer1_Tick(object sender, EventArgs e)
        {
            saniye++;
            label1.Text = saniye.ToString();
            this.BackColor = Color.Gold;
            if (saniye==59)
            {
                dakika++;
                label2.Text = dakika.ToString();
                this.BackColor = Color.PeachPuff;
                saniye = 0;
                progressBar1.Value += 10;
                if (progressBar1.Value==100)//önlem alman lazım
                {
                    this.Close();
                }
                if (dakika==59)
                {
                    saat++;
                    label3.Text = saat.ToString();
                    this.BackColor = Color.OrangeRed;
                    dakika = 0;
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            timer1.Start();
        }
    }
}
