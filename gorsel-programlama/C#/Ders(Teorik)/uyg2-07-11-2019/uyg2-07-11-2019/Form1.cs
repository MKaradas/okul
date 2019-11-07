using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uyg2_07_11_2019
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
            int[,] dizia = new int[2,3] { {1,2,1}, {0,3,-1} };
            int[,] dizib = new int[3,2] { {1,2}, {1,5}, {2,3} };
            int[,] sonucdizi = new int[dizia.GetLength(0),dizib.GetLength(1)];
            //listBox1.Text = "";
            string satir = "";

            for (int i = 0; i < dizia.GetLength(0); i++)
            {
                for (int j = 0; j < dizib.GetLength(1); j++)
                {
                    for (int k=0;k<dizia.GetLength(1);k++)
                    {
                        sonucdizi[i, j] += dizia[i, k] * dizib[k, j];
                    }
                    satir += sonucdizi[i, j].ToString()+" ";
                    if (j == dizib.GetLength(1) - 1)
                    {
                        listBox1.Items.Add(satir);
                        satir = "";
                    }
                }
            }
        }
            

        }
    }

