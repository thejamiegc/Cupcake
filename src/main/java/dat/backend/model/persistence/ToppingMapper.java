package dat.backend.model.persistence;

import dat.backend.model.entities.Topping;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ToppingMapper
{
    static List<Topping> getTopping(ConnectionPool connectionPool) {
        List<Topping> toppingList = new ArrayList<>();

        String sql = "select * from cupcake.topping";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int toppingID = rs.getInt("toppingID");
                    String topping = rs.getString("topping");
                    Double toppingPrice = rs.getDouble("toppingPrice");
                    Topping newTopping = new Topping(toppingID, topping, toppingPrice);
                    toppingList.add(newTopping);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return toppingList;
    }
}
