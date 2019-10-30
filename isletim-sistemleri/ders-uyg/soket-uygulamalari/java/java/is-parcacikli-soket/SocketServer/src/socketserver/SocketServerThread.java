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

/**
 *
 * @author Administrator
 */
public class SocketServerThread extends Thread {
    
    Socket clientSocket = null;
    
    public SocketServerThread(Socket s) {
     
        clientSocket = s;
    }
    
    public void run() {
        
        try {
            
            PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);
            BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

            String s = (new Date()).toString();
            out.println(s);
                    
            System.out.println("SocketServerThread - Gun bilgisi gonderildi");
            Thread.sleep(5000);
                    
            clientSocket.close();
                    
            System.out.println("SocketServerThread - Baglanti kapatildi");
            
        }
        catch(Exception e) {
            
            
        }
    }
    
}
