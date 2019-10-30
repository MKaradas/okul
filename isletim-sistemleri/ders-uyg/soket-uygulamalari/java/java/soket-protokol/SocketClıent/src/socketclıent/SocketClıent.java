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
        boolean devammi = true;
        
        try {
                
            echoSocket = new Socket("localhost", 4444);
            
            PrintWriter sock_out = new PrintWriter(echoSocket.getOutputStream(), true);
            BufferedReader sock_in = new BufferedReader( new InputStreamReader(
                    echoSocket.getInputStream()));
            
            BufferedReader sys_in = new BufferedReader( new InputStreamReader(
                    System.in));
            
            while(devammi) {
            
                s = sys_in.readLine();
                sock_out.println(s);

                s = sock_in.readLine();
                if (!s.equals("")) System.out.println(s);
            }
            
            echoSocket.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }

    }
    
}
