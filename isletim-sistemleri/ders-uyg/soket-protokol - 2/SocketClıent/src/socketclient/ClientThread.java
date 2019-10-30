/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package socketclient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author ders
 */
public class ClientThread extends Thread {
    
    PrintWriter sock_out;
    BufferedReader sock_in;
    String kullaniciAdi = null;
    boolean bittiMi = false;
    
    public ClientThread(PrintWriter sock_out, 
            BufferedReader sock_in) {
        
        this.sock_out = sock_out;
        this.sock_in = sock_in;        
    }
    
    public void run() {
        
        String line, response;
        
        
        try {
            
        
            while(!bittiMi) {
                
                //System.out.println("ct1");
    
                
                response="";

                sock_out.println("mesajvarmi");

                do {
                    line = sock_in.readLine();
                    response += line + "\n";
                    //System.out.println("Line read: "+line);

                } while (!line.equals(""));
                
                
                //System.out.println("ct2");

                if (response != "") {
                    System.out.println(response);
                }

                Thread.sleep(5000);
            }
            
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
    
    public void setKullaniciAdi(String kullaniciAdi) {
        
        this.kullaniciAdi = kullaniciAdi;
    }
    
    public void bitir() {
        bittiMi = true;
    }
}
