package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {

    private List<Cupcake> cupcakeList = new ArrayList<>();

    public ShoppingCart() {
    }

    public void add(Cupcake cupcake) {
        cupcakeList.add(cupcake);
    }

    public void remove(Cupcake cupcake) {
        cupcakeList.remove(cupcake);
    }

    public Object getNumberOfCupcakes() {
        return cupcakeList.size();
    }

    public List<Cupcake> getCupcakeList() {
        return cupcakeList;
    }

    public double cartTotal(){

        double cartTotal = 0;
        for(Cupcake c : cupcakeList){
            cartTotal += c.getCupcakePrice();


        }
        return cartTotal;
    }
}