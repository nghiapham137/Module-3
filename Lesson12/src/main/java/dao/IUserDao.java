package dao;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDao {
    void insertUser(User user) throws SQLException;
    User selectUser(int id);
    List<User> selectAllUsers();
    boolean deleteUser(int id) throws SQLException;
    boolean updateUser(User user) throws SQLException;
    List<User> findUserByCountry(String country);
    List<User> sortByName();
    User getUserById(int id);
    void insertUserStore(User user) throws SQLException;
    void addUserTransaction(User user, int[] permissions);
    void insertUpdateWithoutTransaction();
    void insertUpdateWithTransaction();
    List<User> showAllUsersStore();
    boolean updateUserStore(User user) throws SQLException;
    boolean deleteUserStore(int id) throws SQLException;

}
