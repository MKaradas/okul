using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uygulama1
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

        private void button1_Click(object sender, EventArgs e)
        {
            int sayi, sonuc;
            sayi = Convert.ToInt32(textBox1.Text);//32 bit 64 bit farketmez, integer a çevirmeliyiz.
            sonuc = sayi * sayi * sayi;
            label2.Text = sonuc.ToString();//labelde string yazdırılır dolayısıyla tip dönüşümü yaparız.
        }
    }
}
