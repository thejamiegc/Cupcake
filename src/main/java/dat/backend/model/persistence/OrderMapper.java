package dat.backend.model.persistence;

import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

class OrderMapper {

    static List<Order> getOrders(ConnectionPool connectionPool) {

        List<Order> orderList = new ArrayList<>();

        String sql = "select * from cupcake.order";

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

    static List<Order> getOrderList(ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");


        List<Order> orderList = new ArrayList<>();

        String sql = "SELECT * FROM cupcake.`order`";

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
            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Whoops! something went horribly wrong. The database doesn't seem to agree with  your choice.");
        }
        return orderList;
    }


}
