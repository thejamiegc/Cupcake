package dat.backend.model.entities;

public class Topping {
    private int toppingID;
    private String toppingName;
    private int toppingPrice;

    public Topping(String toppingName, int toppingPrice) {
        this.toppingName = toppingName;
        this.toppingPrice = toppingPrice;
    }

    public Topping(int toppingID, String toppingName, int toppingPrice) {
        this.toppingID = toppingID;
        this.toppingName = toppingName;
        this.toppingPrice = toppingPrice;
    }

    public int getToppingID() {
        return toppingID;
    }

    public String getToppingName() {
        return toppingName;
    }

    public void setToppingName(String toppingName) {
        this.toppingName = toppingName;
    }

    public int getToppingPrice() {
        return toppingPrice;
    }

    public void setToppingPrice(int toppingPrice) {
        this.toppingPrice = toppingPrice;
    }

    @Override
    public String toString() {
        return "Topping{" +
                "topping='" + toppingName + '\'' +
                ", toppingPrice=" + toppingPrice +
                '}';
    }
}