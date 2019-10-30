/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package socketserver;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Date;
import java.util.Vector;

/**
 *
 * @author Administrator
 */
public class SocketServerThread extends Thread {
    
    String[] users = {"ahmet", "mehmet", "hasan"};
    String[] passwords = {"1234", "1234", "1234"};
    
    Socket clientSocket = null;
    
    Vector[] mesajlar;
    
    public SocketServerThread(Socket s, Vector[] mesajlar) {
     
        clientSocket = s;
        this.mesajlar = mesajlar;
    }
    
    public void run() {
        
        // 0: sadece login komutu kabul ediliyor. mesaj atamaz ve cikis yapamaz.
        // 1: login komutu basarili ve sifre bekleniyor. mesaj atamaz ve cikis yapamaz.
        // 2: tamamen login olmus mesaj atabilir ve cikis yapabilir. 
        int state = 0;
        int aktifKullanici = -1;
        
        try {
            
            PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);
            BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

            while (1==1) {
            
                String s = in.readLine();
            
                // giris ahmet
                // sifre 1234
                // cikis ahmet
                // mesaj mehmet MErhaba vlal;lsdkf;asl ;lskfg 
                // mesajvarmi
                String[] strDizi = s.split(" ");

                String komut = strDizi[0];
                String birinciKomutParametresi = null;
                
                if (strDizi.length > 1) birinciKomutParametresi = strDizi[1];

                if (komut.equalsIgnoreCase("giris")) {

                    if (state != 0) {

                        if (state == 1) out.println("Sen zaten login komutu gonderdin. sifreni gonder.");
                        if (state == 2) out.println("Sen zaten login oldun: "+ users[aktifKullanici] +" Tekrar login olmak istiyorsan logout ol.");
                    }
                    else {

                        boolean bulundumu = false;
                        for (int i=0; i<users.length; i++) {

                            if (birinciKomutParametresi.equals(users[i])) {
                                bulundumu = true;
                                aktifKullanici = i;
                                state = 1;
                            }
                        }

                        if (bulundumu) {

                            out.println("Kullanici "+ users[aktifKullanici] +" gecerli. Sifresini gonderin.");                        
                        }
                        else {
                            out.println("Kullanici "+ birinciKomutParametresi +" gecersiz. Yeniden deneyin.");
                        }
                    }
                }
                else if (komut.equalsIgnoreCase("sifre"))
                {
                    if (state != 1) {

                        if (state == 0) out.println("Once login komutunu gonder.");
                        if (state == 2) out.println("Sen zaten login oldun: "+ users[aktifKullanici] +" Tekrar login olmak istiyorsan logout ol.");
                    }
                    else {

                        if (passwords[aktifKullanici].equals(birinciKomutParametresi)) {
                            
                            out.println("Giris basarili");
                            state = 2;
                        }
                        else {

                            out.println("Sifre hatali yeniden deneyin");
                        }
                    }
                }
                else if (komut.equalsIgnoreCase("cikis"))
                {
                    if (state != 2) {

                        out.println("Sen zaten login olmadin ki. Once login ol.");
                    }
                    else {
                        state = 0;
                        aktifKullanici = -1;
                        out.println("ciktin");
                        clientSocket.close();                    
                        System.out.println("SocketServerThread - Baglanti kapatildi");
                        break;
                    }
                }
                else if (komut.equalsIgnoreCase("mesaj"))
                {                
                    if (state != 2) {

                        out.println("Sen zaten login olmadin ki. Mesaj atmadan once login ol.");
                    }
                    else {

                        String kullanici_ve_mesaj = s.substring(6);
                        int bosluk_index = kullanici_ve_mesaj.indexOf(" ");
                        String kullanici = kullanici_ve_mesaj.substring(0, bosluk_index);
                        String mesaj = kullanici_ve_mesaj.substring(bosluk_index);
                        int kullanici_id = -1;
                        
                        for (int i=0; i<users.length; i++) {

                            if (kullanici.equals(users[i])) {                                
                                kullanici_id = i;
                                break;
                            }
                        }
                        
                        mesajlar[kullanici_id].add(users[aktifKullanici] + ": " + mesaj);
                        
                        out.println("");                        
                    }
                }
                else if (komut.equalsIgnoreCase("mesajvarmi"))
                {                
                    if (state != 2) {

                        out.println("Sen zaten login olmadin ki. Mesaj atmadan once login ol.");
                    }
                    else {

                        for (int i=0; i<mesajlar[aktifKullanici].size(); i++) {
                            
                            out.println(mesajlar[aktifKullanici].get(i));
                        }
                        
                        mesajlar[aktifKullanici].clear();
                        
                        out.println("");
                        
                        System.out.println("Mesaj varmi diye soruldu: " + users[aktifKullanici]);
                    }
                }
                else {
                    out.println("Gonderdiginiz komut gecersiz");
                }
            }

            
            //Thread.sleep(5000);
                    
            
            
        }
        catch(Exception e) {
            
            
        }
    }
    
}
