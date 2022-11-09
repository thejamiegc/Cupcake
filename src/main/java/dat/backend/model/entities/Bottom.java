package dat.backend.model.entities;

public class Bottom {
    private int bottomID;
    private String bottoms;
    private double bottomPrice;

    public Bottom(int bottomID, String bottoms, double bottomPrice) {
        this.bottomID = bottomID;
        this.bottoms = bottoms;
        this.bottomPrice = bottomPrice;
    }

    public Bottom(String bottoms, double bottomPrice) {
        this.bottoms = bottoms;
        this.bottomPrice = bottomPrice;
    }

    public int getBottomID() {
        return bottomID;
    }

    public String getBottoms() {
        return bottoms;
    }

    public void setBottoms(String bottoms) {
        this.bottoms = bottoms;
    }

    public double getBottomPrice() {
        return bottomPrice;
    }

    public void setBottomPrice(double bottomPrice) {
        this.bottomPrice = bottomPrice;
    }

    @Override
    public String toString() {
        return "Bottom{" +
                "bottoms='" + bottoms + '\'' +
                ", bottomPrice=" + bottomPrice +
                '}';
    }
}


