package dat.backend.model.entities;

public class Topping {
    private int toppingID;
    private String topping;
    private int toppingPrice;

    public Topping(String topping, int toppingPrice) {
        this.topping = topping;
        this.toppingPrice = toppingPrice;
    }

    public Topping(int toppingID, String topping, int toppingPrice) {
        this.toppingID = toppingID;
        this.topping = topping;
        this.toppingPrice = toppingPrice;
    }

    public int getToppingID() {
        return toppingID;
    }

    public String getTopping() {
        return topping;
    }

    public void setTopping(String topping) {
        this.topping = topping;
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
                "topping='" + topping + '\'' +
                ", toppingPrice=" + toppingPrice +
                '}';
    }
}