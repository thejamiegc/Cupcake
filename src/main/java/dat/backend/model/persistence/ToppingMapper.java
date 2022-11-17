package dat.backend.model.persistence;

import dat.backend.model.entities.Topping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ToppingMapper {

    static List<Topping> getToppings(ConnectionPool connectionPool) {

        List<Topping> toppingList = new ArrayList<>();
        String sql = "select * from cupcake.topping";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int toppingID = rs.getInt("toppingID");
                    String topping = rs.getString("topping");
                    double toppingPrice = rs.getDouble("toppingPrice");
                    Topping toppingtmp = new Topping(toppingID, topping, toppingPrice);
                    toppingList.add(toppingtmp);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return toppingList;
    }
}