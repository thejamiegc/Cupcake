package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {

    private List<Cupcake> cupcakeList = new ArrayList<>();

    //constructor
    public ShoppingCart() {
    }

    //methods
    public void add(Cupcake cupcake) {
        cupcakeList.add(cupcake);
    }

    public void remove(Cupcake cupcake) {
        cupcakeList.remove(cupcake);
    }

    public double cartTotal() {
        double cartTotal = 0;
        for (Cupcake c : cupcakeList) {
            cartTotal += c.getCupcakePrice();
        }
        return cartTotal;
    }

    //getters
    public Object getNumberOfCupcakes() {
        return cupcakeList.size();
    }

    public List<Cupcake> getCupcakeList() {
        return cupcakeList;
    }

}