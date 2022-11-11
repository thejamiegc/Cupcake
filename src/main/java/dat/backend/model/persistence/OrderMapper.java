package dat.backend.model.persistence;

import dat.backend.model.entities.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

class OrderMapper {

    static List<Order> getOrders(ConnectionPool connectionPool) {

        List<Order> orderList = new ArrayList<>();

        String sql = "select * from order";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int orderID = rs.getInt("orderID");
                    int customerID = rs.getInt("customerID");
                    Timestamp created = rs.getTimestamp("created");
                    Order order = new Order(orderID, customerID, created);
                    orderList.add(order);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }
}
