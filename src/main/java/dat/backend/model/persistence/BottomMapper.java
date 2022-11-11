package dat.backend.model.persistence;

import dat.backend.model.entities.Bottom;
import dat.backend.model.entities.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BottomMapper {

    static List<Bottom> getBottoms(ConnectionPool connectionPool) {

        List<Bottom> bottomList = new ArrayList<>();

        String sql = "select * from cupcake.bottom";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int bottomID = rs.getInt("bottomID");
                    String bottom = rs.getString("bottom");
                    int bottomPrice = rs.getInt("bottomPrice");
                    Bottom bottomtmp = new Bottom(bottomID, bottom, bottomPrice);
                    bottomList.add(bottomtmp);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bottomList;
    }
}
