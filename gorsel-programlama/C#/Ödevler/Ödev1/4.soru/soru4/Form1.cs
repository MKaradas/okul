using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;  
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace soru4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text = "Random Değer Oluşturma";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int[] kullaniciTahmin = new int[6];
            int[] randomUretilen = new int[6];
            Random sayiUret = new Random();
            int sayac=0;

            /*random sekilde uretilen sayilari diziye atadik.*/
            for (int i = 0; i < randomUretilen.Length; i++)
            {
                randomUretilen[i] = sayiUret.Next(1,50);
            }
            /* daha sonra kiyaslanacak soruları label ile forma bastirdik.*/
            label7.Text = "Random Sonuç: ";
            label8.Text = randomUretilen[0].ToString();
            label9.Text = randomUretilen[1].ToString();
            label10.Text = randomUretilen[2].ToString();
            label11.Text = randomUretilen[3].ToString();
            label12.Text = randomUretilen[4].ToString();
            label13.Text = randomUretilen[5].ToString();
            /*kullanicinin textboxa girdigi degerleri alip integer tipine donusturduk(cast), ve diziye atadik.*/
            kullaniciTahmin[0] = Convert.ToInt32(textBox1.Text);
            kullaniciTahmin[1] = Convert.ToInt32(textBox2.Text);
            kullaniciTahmin[2] = Convert.ToInt32(textBox3.Text);
            kullaniciTahmin[3] = Convert.ToInt32(textBox4.Text);
            kullaniciTahmin[4] = Convert.ToInt32(textBox5.Text);
            kullaniciTahmin[5] = Convert.ToInt32(textBox6.Text);
            /*iki diziyide kiyaslayarak sayac artirdik bu sekilde kullanicinin ne kadarini dogru tahmin ettigini bulduk.*/
            for (int i = 0; i < randomUretilen.Length; i++)
            {
                if (randomUretilen[i] == kullaniciTahmin[i])
                {
                    sayac++;
                }
                
            }
            /*eger 3 veya daha buyuk dogru tahmin etmisse kazandigini ekrana bastirdik.*/
            if (sayac >= 3)
            {
                MessageBox.Show("Tebrikler kazandınız " + sayac + " tutturdunuz.");
            }
            
            


        }
    }
}
