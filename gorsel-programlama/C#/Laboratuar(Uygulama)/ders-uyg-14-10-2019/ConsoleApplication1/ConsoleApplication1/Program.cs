using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("lütfen bir sayı giriniz");
            double a = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("lütfen bir sayı daha giriniz");
            double b = Convert.ToDouble(Console.ReadLine());
            double c = (a + b) / 2;
            Console.WriteLine("girilen iki sayının ortalaması = " + c);
            Console.ReadLine();

        }
    }
}
