package dat.backend.model.persistence;

import dat.backend.model.entities.Bottom;
import dat.backend.model.entities.Cupcake;
import dat.backend.model.entities.Topping;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CupcakeMapper {


    public static Cupcake addCupcake(Topping topping, Bottom bottom, ConnectionPool connectionPool) throws DatabaseException{
        Logger.getLogger("web").log(Level.INFO, "");
        Cupcake cupcake;
        String sql = "INSERT INTO cupcake.cupcake (toppingID, bottomID) VALUES (?, ?)";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, topping.getToppingID());
                ps.setInt(2,bottom.getBottomID());
                ps.executeUpdate();

                int rowsAffected = ps.executeUpdate();
                if(rowsAffected == 1)
                {
                    cupcake = new Cupcake(topping,bottom);
                }else
                {
                    throw new DatabaseException("The topping with the name = " + topping + "and the bottom with the name "+ bottom +" could not be inserted into the database");
                }

            }
        } catch (SQLException ec) {
            throw new DatabaseException(ec,"Could not insert cupcake into database");
        }

        return cupcake;
    }

}
