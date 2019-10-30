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
                
                    System.out.println("SocketServer - Baglantilar bekleniyor");
                    
                    Socket clientSocket = serverSocket.accept();

                    System.out.println("SocketServer - Bir baglanti saglandi. Baglanan: " + clientSocket.getRemoteSocketAddress());
                    
                    SocketServerThread t = new SocketServerThread(clientSocket);
                    t.start();
                }
                
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
              
    
}
