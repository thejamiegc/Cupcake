package dat.backend.model.persistence;

import dat.backend.model.entities.Order;
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

    static int createOrder(int customerID, ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "INSERT INTO cupcake.`order` (customerID) VALUES (?)";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                ps.setInt(1, customerID);
                int rowsAffected = ps.executeUpdate();
                ResultSet rs = ps.getGeneratedKeys();
                rs.next();
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert order into database");
        }

    }

    static int insertOrderLine(double toppingPrice, double bottomPrice, int quantity, int orderID, int toppingID, int bottomID, ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "INSERT INTO cupcake.`orderline` (toppingPrice, bottomPrice, quantity, orderID, toppingID, bottomID) VALUES (?,?,?,?,?,?)";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                ps.setDouble(1, toppingPrice);
                ps.setDouble(2, bottomPrice);
                ps.setInt(3, quantity);
                ps.setInt(4, orderID);
                ps.setInt(5, toppingID);
                ps.setInt(6, bottomID);
                int rowsAffected = ps.executeUpdate();
                ResultSet rs = ps.getGeneratedKeys();
                rs.next();
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert order into database");
        }

    }
}
