package dat.backend.model.entities;

public class Bottom {
    private int bottomID;
    private String bottomName;
    private double bottomPrice;

    //constructor
    public Bottom(int bottomID, String bottomName, double bottomPrice) {
        this.bottomID = bottomID;
        this.bottomName = bottomName;
        this.bottomPrice = bottomPrice;
    }

    //constructor
    public Bottom(String bottomName, double bottomPrice) {
        this.bottomName = bottomName;
        this.bottomPrice = bottomPrice;
    }

    //getters
    public int getBottomID() {
        return bottomID;
    }

    public String getBottomName() {
        return bottomName;
    }

    public double getBottomPrice() {
        return bottomPrice;
    }

    //setters
    public void setBottomName(String bottomName) {
        this.bottomName = bottomName;
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