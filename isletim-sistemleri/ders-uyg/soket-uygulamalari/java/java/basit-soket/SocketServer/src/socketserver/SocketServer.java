/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package socketserver;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Date;

/**
 *
 * @author Administrator
 */
public class SocketServer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        try { 
            
                ServerSocket serverSocket = new ServerSocket(4444);
                
                System.out.println("Sunucu soket olusturuldu");
                
                while(true) {
                
                    System.out.println("Baglantilar bekleniyor");
                    
                    Socket clientSocket = serverSocket.accept();

                    System.out.println("Bir baglanti saglandi. Baglanan: " + clientSocket.getRemoteSocketAddress());
                    
                    PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);
                    BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

                    String s = (new Date()).toString();
                    out.println(s);
                    
                    System.out.println("Gun bilgisi gonderildi");
                    Thread.sleep(5000);
                    
                    clientSocket.close();
                    
                    System.out.println("Baglanti kapatildi");
                }
                
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
              
    
}
