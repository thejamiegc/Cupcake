package dat.backend.model.entities;

public class OrderLine {
//    private int orderlineID;
    private double toppingPrice;
    private double bottomPrice;
    private int quantity;
    private int orderID;
    private int toppingID;
    private int bottomID;

    public OrderLine(/*int orderlineID,*/ double toppingPrice, double bottomPrice, int quantity, int orderID, int toppingID, int bottomID) {
//        this.orderlineID = orderlineID;
        this.toppingPrice = toppingPrice;
        this.bottomPrice = bottomPrice;
        this.quantity = quantity;
        this.orderID = orderID;
        this.toppingID = toppingID;
        this.bottomID = bottomID;
    }

    public double getToppingPrice() {
        return toppingPrice;
    }

    public double getBottomPrice() {
        return bottomPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getOrderID() {
        return orderID;
    }

    public int getToppingID() {
        return toppingID;
    }

    public int getBottomID() {
        return bottomID;
    }
}


