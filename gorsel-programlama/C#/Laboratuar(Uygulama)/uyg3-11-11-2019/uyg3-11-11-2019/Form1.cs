using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg3_11_11_2019
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        int saniye = 0;
        private void button1_Click(object sender, EventArgs e)
        {
            saniye = Convert.ToInt32(textBox1.Text);
            timer1.Enabled = true;
            //veya bu timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            saniye--;
            
            progressBar1.Value += 10;
            if (saniye<4)
            {
                label2.Text = saniye.ToString();
            }
            if (saniye==0)
            {
                this.Close();
            }
            else
            {
                this.Text="uygulama "+saniye.ToString() + " sonra kapanacaktır.";
            }
        }
    }
}
