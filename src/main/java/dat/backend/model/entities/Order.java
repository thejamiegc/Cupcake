package dat.backend.model.entities;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class Order {
    private int orderID;
    private int customerID;
    private Timestamp created;
    private List<OrderLine> orderLineList = new ArrayList<>();

    //constructor
    public Order(int orderID, int customerID, Timestamp created) {
        this.orderID = orderID;
        this.customerID = customerID;
        this.created = created;
    }

    //constructor
    public Order(int customerID) {
        this.customerID = customerID;
    }

    //methods
    public void add(OrderLine orderLine) {
        orderLineList.add(orderLine);
    }

    public void remove(OrderLine orderLine) {
        orderLineList.remove(orderLine);
    }

    //getters
    public int getOrderListSize() {
        return orderLineList.size();
    }

    public List<OrderLine> getOrderList() {
        return orderLineList;
    }

    public int getOrderID() {
        return orderID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public Timestamp getCreated() {
        return created;
    }

    //setters
    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderID=" + orderID +
                ", customerID=" + customerID +
                ", created=" + created +
                '}';
    }
}
