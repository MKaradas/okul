/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package socketclıent;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

/**
 *
 * @author Administrator
 */
public class SocketClıent {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Socket echoSocket=null;
        String s;
        
        try {
                
            echoSocket = new Socket("localhost", 4444);
            
            PrintWriter out = new PrintWriter(echoSocket.getOutputStream(), true);
            BufferedReader in = new BufferedReader( new InputStreamReader(
                    echoSocket.getInputStream()));
                
            while ((s = in.readLine()) != null) {
                System.out.println("echo: " + s);
            }
            
            echoSocket.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }

    }
    
}
