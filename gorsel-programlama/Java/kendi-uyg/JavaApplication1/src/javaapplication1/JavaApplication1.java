package javaapplication1;

import java.util.ArrayList;
import java.util.Scanner;
public class JavaApplication1 {

   
    public static void main(String[] args) {
       
        Scanner tara = new Scanner(System.in);
        int sayi1 = 0,sayi2 = 3 ;
        int[] dizi= new int[3];
        for(int gecici :dizi) {
            int i =1;
            dizi[gecici] += i;
            System.out.println(dizi[gecici]);
            i++;
        }
        /*
          //  3 FARKLI İSİM TUTAN Bir string dizisi tanımlayın.
           // 3 farklı soyisim tutan bir string dizi tanımlayın.
        //  birlestir() isimli bir method oluşturun ve bu isim ve soyisimleri,
        // birleştirin ve de her birine rastgele 50 ye kadar bir yaş değeri atasın
        //bu method birleştirdiğiniz isimleri bir arraylist içinde tutsun ve bunu geriye döndürsün
       // yazdir() methodu bu dönen arraylisti gelişmiş for döngüsü ile yazdırsın.
        
        
        
        String[] isimler = {"java","c","python"};
        String[] soyisimler = {"javac","gcc","python"};
        ArrayList<String> birlestirilmisIsimler = new ArrayList<>();
        birlestirilmisIsimler = birlestir(isimler, soyisimler);
        
        yazdir(birlestirilmisIsimler);*/
        
        
    }
   /* public static ArrayList<String> birlestir(String[] isim, String[] soyisim) {
        ArrayList<String> birlestirilen = new ArrayList<>();
        
        int yas = 0;
        for(int i=0;i<soyisim.length;i++) {
            yas=(int)(Math.random()*50);  
            String birlesme = isim[i] + " "+soyisim[i] + " "+yas; 
            birlestirilen.add(birlesme);
        }
        return birlestirilen;
    }
    public static void yazdir(ArrayList<String> birlestirilen) {
        
        for(String gecici : birlestirilen) {
            
            System.out.println(gecici);
        }
    }*/
}
