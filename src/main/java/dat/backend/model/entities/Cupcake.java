package dat.backend.model.entities;

public class Cupcake {
    private int cupcakeID;
    private Topping topping;
    private Bottom bottom;
    private int quantity;
    private double cupcakePrice;



      //constructor
    public Cupcake(Topping topping, Bottom bottom, int quantity) {
        this.topping = topping;
        this.bottom = bottom;
        this.quantity = quantity;
        this.cupcakePrice = (topping.getToppingPrice() + bottom.getBottomPrice()) * quantity;
    }

    public int getCupcakeID() {
        return cupcakeID;
    }

    public Topping getTopping() {
        return topping;
    }

    public void setTopping(Topping topping) {
        this.topping = topping;
    }

    public Bottom getBottom() {
        return bottom;
    }

    public void setBottom(Bottom bottom) {
        this.bottom = bottom;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getCupcakePrice() {
        return cupcakePrice;
    }

    public void setCupcakePrice(double cupcakePrice) {
        this.cupcakePrice = cupcakePrice;
    }

    @Override
    public String toString() {
        return "Cupcake{" +
                "topping=" + topping +
                ", bottom=" + bottom +
                ", quantity=" + quantity +
                ", cupcakePrice=" + cupcakePrice +
                '}';
    }
}
