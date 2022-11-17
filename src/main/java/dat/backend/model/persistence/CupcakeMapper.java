package dat.backend.model.persistence;

import dat.backend.model.entities.Bottom;
import dat.backend.model.entities.Topping;
import dat.backend.model.exceptions.DatabaseException;
import java.util.List;

class CupcakeMapper {

    static List<Topping> getToppings(ConnectionPool connectionPool) throws DatabaseException {
        return ToppingMapper.getToppings(connectionPool);
    }

    public static List<Bottom> getBottoms(ConnectionPool connectionPool) throws DatabaseException {
        return BottomMapper.getBottoms(connectionPool);
    }
}
