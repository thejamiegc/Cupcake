package dat.backend.model.persistence;

import dat.backend.model.entities.Bottom;
import dat.backend.model.entities.Topping;
import dat.backend.model.exceptions.DatabaseException;

import java.util.List;

public class CupcakeFacade {
    public static List<Topping> getToppingByID(int toppingID, ConnectionPool connectionPool) throws DatabaseException {
        return CupcakeMapper.getToppingByID(toppingID, connectionPool);
    }

    public static List<Bottom> getBottomByID(int bottomID, ConnectionPool connectionPool) throws DatabaseException {
        return CupcakeMapper.getBottomID(bottomID, connectionPool);
    }
}
