package dat.backend.model.entities;

public class Bottom {
    private int bottomID;
    private String bottomName;
    private double bottomPrice;

    public Bottom(int bottomID, String bottomName, double bottomPrice) {
        this.bottomID = bottomID;
        this.bottomName = bottomName;
        this.bottomPrice = bottomPrice;
    }

    public Bottom(String bottomName, double bottomPrice) {
        this.bottomName = bottomName;
        this.bottomPrice = bottomPrice;
    }

    public int getBottomID() {
        return bottomID;
    }

    public String getBottomName() {
        return bottomName;
    }

    public void setBottomName(String bottomName) {
        this.bottomName = bottomName;
    }

    public double getBottomPrice() {
        return bottomPrice;
    }

    public void setBottomPrice(int bottomPrice) {
        this.bottomPrice = bottomPrice;
    }

    @Override
    public String toString() {
        return "Bottom{" +
                "bottoms='" + bottomName + '\'' +
                ", bottomPrice=" + bottomPrice +
                '}';
    }
}