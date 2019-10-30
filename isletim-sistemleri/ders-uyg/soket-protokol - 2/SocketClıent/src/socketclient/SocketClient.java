/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package socketclient;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

/**
 *
 * @author Administrator
 */
public class SocketClient {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String kullaniciAdi = null;
        
        Socket echoSocket=null;
        String s;
        boolean devammi = true;
        ClientThread t;
        
        try {
                
            echoSocket = new Socket("localhost", 4444);
            
            PrintWriter sock_out = new PrintWriter(echoSocket.getOutputStream(), true);
            BufferedReader sock_in = new BufferedReader( new InputStreamReader(
                    echoSocket.getInputStream()));
            
            BufferedReader sys_in = new BufferedReader( new InputStreamReader(
                    System.in));
            
            t = new ClientThread(sock_out, sock_in);
            
            
            while(devammi) {
            
                s = sys_in.readLine();
                
                if (s.startsWith("giris")) {
                    
                    kullaniciAdi = s.substring(6);
                    
                }
                
                sock_out.println(s);

                s = sock_in.readLine();
                
                if (s.equals("ciktin")) {
                    
                    t.bitir();
                    break;
                }
                else if (s.equals("Giris basarili")) {
                    t.setKullaniciAdi(kullaniciAdi);
                    System.out.println(s);
                    t.start();
                }
                else if (!s.equals("")) System.out.println(s);
                
                
            }
            
            echoSocket.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }

    }
    
}
