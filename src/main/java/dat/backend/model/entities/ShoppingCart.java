package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {

    List<Cupcake> cupcakeList = new ArrayList<>();


    public void add(Cupcake cupcake) {
        cupcakeList.add(cupcake);
    }

    public Object getNumberOfCupcakes() {
        return cupcakeList.size();
    }

    public List<Cupcake> getCupcakeList() {
        return cupcakeList;
    }
}
