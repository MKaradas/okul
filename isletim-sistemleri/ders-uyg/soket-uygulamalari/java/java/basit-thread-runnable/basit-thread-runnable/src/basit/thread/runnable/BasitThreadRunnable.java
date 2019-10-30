/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basit.thread.runnable;

/**
 *
 * @author Administrator
 */
public class BasitThreadRunnable {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        try {
        
            BasitThread b = new BasitThread(500);
            Thread t = new Thread(b);
            t.start();
            
            //Thread.sleep(1000);
            t.join();
            
            System.out.println("Ana program: Thread in sonucu: " + b.getToplam());
        
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
}
