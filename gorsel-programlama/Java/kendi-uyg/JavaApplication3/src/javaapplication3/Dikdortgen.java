package javaapplication3;
public class Dikdortgen {

        public double en;
        private double boy;
        
        public Dikdortgen(double en) {
            double boy = 5;
            this.en = en;
        }
        public Dikdortgen (double boy) {
            this.boy = boy;          
        }
        
        public double alanHesapla() {
            return en *boy;
        }
        
    
}
