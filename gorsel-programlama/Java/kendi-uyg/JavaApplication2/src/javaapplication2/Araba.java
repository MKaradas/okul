package javaapplication2;
public class Araba {
   
    private int yil;
    private String renk;
    private int adi;
    private int beygirGucu;

    public String getRenk() {
        return renk;
    }

    public void setRenk(String renk) {
        this.renk = renk;
    }

    public int getAdi() {
        return adi;
    }

    public void setAdi(int adi) {
        this.adi = adi;
    }

    public int getBeygirGucu() {
        return beygirGucu;
    }

    public void setBeygirGucu(int beygirGucu) {
        this.beygirGucu = beygirGucu;
    }

    public boolean isOtomatikVitesMi() {
        return otomatikVitesMi;
    }

    public void setOtomatikVitesMi(boolean otomatikVitesMi) {
        this.otomatikVitesMi = otomatikVitesMi;
    }
    private boolean otomatikVitesMi;
    
    public void setYil(int yil){
        this.yil=yil;
    }
    public int getYil() {
        return this.yil;
    }
    
    
    
}
