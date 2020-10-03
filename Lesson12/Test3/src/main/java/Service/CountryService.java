package Service;

import Model.Country;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CountryService {
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2?useSSL=false","root", "123456");
        }catch (SQLException e) {
            e.printStackTrace();
        }catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return connection;
    }

    public Country getCountryById(int id) {
        String query = "SELECT * FROM country WHERE country_id=" + id + ";";
        try (Connection connection = getConnection();
        PreparedStatement ps = connection.prepareStatement(query)){
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int country_id = resultSet.getInt("country_id");
                String country_name = resultSet.getString("country_name");
                Country country = new Country(country_id, country_name);
                return  country;
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Country> getAllCountry() {
        List<Country> countryList = new ArrayList<>();
        String query = "SELECT * FROM country;";
        try (Connection connection = getConnection();
        PreparedStatement ps = connection.prepareStatement(query)){
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int country_id = resultSet.getInt("country_id");
                String country_name = resultSet.getString("country_name");
                countryList.add(new Country(country_id,country_name));
            }
            return countryList;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Country getCountryByName(String name) {
        String query = "SELECT * FROM country WHERE country_name = ?;";
        try (Connection connection = getConnection();
        PreparedStatement ps = connection.prepareStatement(query)){
            ps.setString(1, name);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int country_id = resultSet.getInt("country_id");
                String country_name = resultSet.getString("country_name");
                Country country = new Country(country_id, country_name);
                return  country;
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
