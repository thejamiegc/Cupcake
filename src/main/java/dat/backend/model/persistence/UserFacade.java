package dat.backend.model.persistence;

import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.util.List;

public class UserFacade {
    public static User login(String username, String password, String role, double balance, ConnectionPool connectionPool) throws DatabaseException {
        return UserMapper.login(username, password, role, balance, connectionPool);
    }

    public static User login(String username, String password, ConnectionPool connectionPool) throws DatabaseException {
        return UserMapper.login(username, password, connectionPool);
    }

    public static User createUser(String username, String password, String role, double balance, ConnectionPool connectionPool) throws DatabaseException {
        return UserMapper.createUser(username, password, role, balance, connectionPool);
    }

    public static List<User> getUserList(ConnectionPool connectionPool) throws DatabaseException {
        return UserMapper.getUserList(connectionPool);
    }
}
