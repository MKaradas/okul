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
public class BasitThreadThread {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        try {
        
            BasitThread t = new BasitThread(500);
            t.start();
            
            //Thread.sleep(1000);
            t.join();
            
            System.out.println("Ana program: Thread in sonucu: " + t.getToplam());
        
        } catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    
}
