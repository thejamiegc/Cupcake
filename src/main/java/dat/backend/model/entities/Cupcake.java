package dat.backend.model.entities;

public class Cupcake {

private int cupcakeID;
private Topping topping;
private Bottom bottom;
private double cupcakeTotalPrice;


    public Cupcake(int cupcakeID, Topping topping, Bottom bottom) {
        this.cupcakeID = cupcakeID;
        this.topping = topping;
        this.bottom = bottom;

        cupcakeTotalPrice = this.topping.getToppingPrice() + this.bottom.getBottomPrice();
    }

    public Cupcake(Topping topping, Bottom bottom) {
        this.topping = topping;
        this.bottom = bottom;

        cupcakeTotalPrice = this.topping.getToppingPrice() + this.bottom.getBottomPrice();

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

    public double getCupcakeTotalPrice() {
        return cupcakeTotalPrice;
    }

    public void setCupcakeTotalPrice(double cupcakeTotalPrice) {
        this.cupcakeTotalPrice = cupcakeTotalPrice;
    }

    @Override
    public String toString() {
        return "Cupcake{" +
                "topping=" + topping +
                ", bottom=" + bottom +
                ", cupcakeTotalPrice=" + cupcakeTotalPrice +
                '}';
    }
}
