package javaapplication6;
public class GeometrikSekil {
    private int en;
    private int boy;
    
    
    public void setEn(int en) {
        this.en = en;
    }
    public void setBoy(int boy) {
        this.boy = boy;
    }
    public int getEn() {
        return this.en;
    }
    public int getBoy() {
        return this.boy;
    }
    @Override
    public String toString() {
         return "En bilgisi "+en+" boy bilgisi "+boy;
    }
}
