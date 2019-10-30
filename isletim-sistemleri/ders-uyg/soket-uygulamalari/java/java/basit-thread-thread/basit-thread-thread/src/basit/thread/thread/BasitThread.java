/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basit.thread.thread;

/**
 *
 * @author Administrator
 */
public class BasitThread extends Thread {
    
    int toplam = 0;
    int sayi;
    
    public BasitThread(int sayi) {
        
        this.sayi = sayi;
        
        System.out.println("Thread olusturuldu");
    }
    
    public void run() {
        
        System.out.println("Thread baslatildi");
        
        try {
        
            for (int i=1; i<=sayi; i++) {
                toplam = toplam + i;                            
                if (i % 100 == 0) Thread.sleep(1000);
            }
            
            System.out.println("Thread: Toplama islemi bitti. Sonuc: "+toplam);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public int getToplam() {
        return toplam;
    }
}
