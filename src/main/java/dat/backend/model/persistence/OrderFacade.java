package dat.backend.model.persistence;

import dat.backend.model.entities.Order;
import dat.backend.model.exceptions.DatabaseException;

import java.util.List;

public class OrderFacade {

    public static List<Order> getOrders(ConnectionPool connectionPool) {
        return OrderMapper.getOrders(connectionPool);
    }

    public static List<Order> getOrderList(ConnectionPool connectionPool) throws DatabaseException {
        return OrderMapper.getOrderList(connectionPool);
    }

    public static int createOrder(int customerID,ConnectionPool connectionPool) throws DatabaseException {
        return OrderMapper.createOrder(customerID,connectionPool);
    }
}