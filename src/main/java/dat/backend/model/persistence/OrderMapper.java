package dat.backend.model.persistence;

import dat.backend.model.entities.Order;
import dat.backend.model.entities.OrderLine;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

class OrderMapper {

    static List<OrderLine> getOrderLineList(ConnectionPool connectionPool) {

        List<OrderLine> orderLineArrayList = new ArrayList<>();

        String sql = "select * from cupcake.orderline";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    double toppingPrice = rs.getDouble("toppingPrice");
                    double bottomPrice = rs.getDouble("bottomPrice");
                    int quantity = rs.getInt("quantity");
                    int orderID = rs.getInt("orderID");
                    int toppingID = rs.getInt("toppingID");
                    int bottomID = rs.getInt("bottomID");
                    OrderLine orderLine = new OrderLine(toppingPrice,bottomPrice,quantity,orderID,toppingID,bottomID);
                    orderLineArrayList.add(orderLine);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderLineArrayList;
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

    static int insertOrderLine(OrderLine orderLine, ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "INSERT INTO cupcake.`orderline` (toppingPrice, bottomPrice, quantity, orderID, toppingID, bottomID) VALUES (?,?,?,?,?,?)";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                ps.setDouble(1, orderLine.getToppingPrice());
                ps.setDouble(2, orderLine.getBottomPrice());
                ps.setInt(3, orderLine.getQuantity());
                ps.setInt(4, orderLine.getOrderID());
                ps.setInt(5, orderLine.getToppingID());
                ps.setInt(6, orderLine.getBottomID());
                ps.executeUpdate();
                ResultSet rs = ps.getGeneratedKeys();
                rs.next();
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert order into database");
        }

    }

    public static void transaction(User user, ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "Update cupcake.user SET cupcake.user.balance = ? WHERE cupcake.user.userID = ?";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setDouble(1,user.getBalance());
                ps.setInt(2,user.getUserID());
                ps.executeUpdate();



            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert order into database");
        }
    }

    public static void deleteOrder(int orderID, ConnectionPool connectionPool) throws DatabaseException {
        deleteOrderLine(orderID,connectionPool);
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "delete from cupcake.order WHERE orderID = ?";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setDouble(1,orderID);
                ps.executeUpdate();

            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert order into database");
        }
    }

    private static void deleteOrderLine(int orderID, ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "delete from cupcake.orderline WHERE orderID = ?";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setDouble(1,orderID);
                ps.executeUpdate();

            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert order into database");
        }
    }
}

