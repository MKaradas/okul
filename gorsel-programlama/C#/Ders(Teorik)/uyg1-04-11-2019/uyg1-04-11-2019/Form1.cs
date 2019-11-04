using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg1_04_11_2019
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
            double[] dizi = { 15, 24, 57, 89, 41, 25, 24, 12, 90, 85 };

            double toplam = 0, ortalama = 0, tmp = 0, enBuyuk = 0, enKucuk = 0, standartSapma = 0;
            enBuyuk = dizi[0];
            enKucuk = dizi[0];
            for (int i = 0; i < dizi.Length; i++)
            {
                //en buyugu bulma
                if (dizi[i] > enBuyuk)
                {
                    enBuyuk = dizi[i];
                }
                //en kucugu bulma
                if (dizi[i] < enKucuk)
                {
                    enKucuk = dizi[i];
                }
                //toplam bulma
                toplam += dizi[i];
            }
            ortalama = toplam / dizi.Length;

            //standart sapma bulma
            for (int i = 0; i < dizi.Length; i++)
            {
                standartSapma += Math.Pow((dizi[i] - ortalama), 2);

            }
            standartSapma = standartSapma / dizi.Length;
            standartSapma = Math.Sqrt(standartSapma);
            MessageBox.Show("En büyük eleman: " + enBuyuk + " En küçük eleman: " + enKucuk + " ortalama: " + ortalama + " standart sapma: " + standartSapma);

        }
    }
}
