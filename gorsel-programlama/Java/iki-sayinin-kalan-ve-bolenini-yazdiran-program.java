package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        int sayi1 = 0, sayi2 = 0, sayi3 = 0;
        int toplam = 0, carpim = 0, carpan = 0;
        System.out.println("Lutfen 3 adet sayi giriniz: ");

        Scanner verial = new Scanner(System.in);

        sayi1 = verial.nextInt();
        sayi2 = verial.nextInt();
        sayi3 = verial.nextInt();



        toplam = sayi1 + sayi2 + sayi3;
        carpim = sayi1 * sayi2 * sayi3;

        System.out.println("Toplamlari "+toplam+ " Carpimlari "+carpim);

        for (int i = 1;i<=sayi1;i++)
        {
            carpan = sayi1 / i ;
            if (sayi1 % i == 0 ){
                System.out.println(sayi1+"'in carpanlari: "+carpan);
            }

        }
        for (int i = 1;i<=sayi2;i++)
        {
            carpan = sayi2 / i ;
            if (sayi2 % i == 0 ){
                System.out.println(sayi2+"'in carpanlari: "+carpan);
            }

        }
        for (int i = 1;i<=sayi3;i++)
        {
            carpan = sayi3 / i ;
            if (sayi3 % i == 0 ){
                System.out.println(sayi3+"'in carpanlari: "+carpan);
            }

        }



    }
