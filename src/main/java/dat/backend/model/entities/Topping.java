package dat.backend.model.entities;

public class Topping {
    private int toppingID;
    private String topping;
    private Double toppingPrice;

    public Topping(String topping, Double toppingPrice) {
        this.topping = topping;
        this.toppingPrice = toppingPrice;
    }

    public Topping(int toppingID, String topping, Double toppingPrice)
    {
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

    public Double getToppingPrice() {
        return toppingPrice;
    }

    public void setToppingPrice(Double toppingPrice) {
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
