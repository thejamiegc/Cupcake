package dat.backend.model.persistence;

import dat.backend.model.entities.Bottom;
import dat.backend.model.entities.Topping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BottomMapper {

    static List<Bottom> getTopping(ConnectionPool connectionPool) {
        List<Bottom> bottomList = new ArrayList<>();

        String sql = "select * from cupcake.bottom";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int bottomID = rs.getInt("bottomID");
                    String bottom = rs.getString("bottom");
                    Double bottomPrice = rs.getDouble("bottomPrice");
                    Bottom newBottom = new Bottom(bottomID, bottom, bottomPrice);
                    bottomList.add(newBottom);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bottomList;
    }
}
