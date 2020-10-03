package Service;

import Model.City;
import com.mysql.jdbc.CallableStatement;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class CityService implements IService {
    CountryService countryService = new CountryService();

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

    @Override
    public List<City> showAllCity() {
        List<City> cityList = new ArrayList<>();
        String store = "CALL showAllCity;";
        try (Connection connection = getConnection();
             CallableStatement cs = (CallableStatement) connection.prepareCall(store)){
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                float area = resultSet.getFloat("area");
                int population = resultSet.getInt("population");
                int gdp = resultSet.getInt("gdp");
                String description = resultSet.getString("description");
                int country_id = resultSet.getInt("country_id");
                cityList.add(new City(id, name, area, population, gdp, description, countryService.getCountryById(country_id)));
            }
            return cityList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public City getCityById(int id) {
        String store = "CALL getCityById(" + id + ");";
        try (Connection connection = getConnection();
        CallableStatement cs = (CallableStatement) connection.prepareCall(store)){
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                float area = resultSet.getFloat("area");
                int population = resultSet.getInt("population");
                int gdp = resultSet.getInt("gdp");
                String description = resultSet.getString("description");
                int country_id = resultSet.getInt("country_id");
                City city = new City(id, name, area, population, gdp, description, countryService.getCountryById(country_id));
                return city;
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean addNewCity(City city) {
        boolean isAdded = false;
        String query = "INSERT INTO city(name, area, population, gdp, description, country_id)" + "VALUES(?,?,?,?,?,?)";
        try (Connection connection = getConnection();
        PreparedStatement ps = connection.prepareStatement(query)){
            ps.setString(1, city.getCityName());
            ps.setFloat(2, city.getArea());
            ps.setInt(3, city.getPopulation());
            ps.setInt(4, city.getGDP());
            ps.setString(5, city.getDescription());
            ps.setInt(6, city.getCountry().getCountryId());
            isAdded = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isAdded;
    }

    @Override
    public boolean editCityInformation(City city) throws SQLException {
        boolean isEdited;
        String query = "UPDATE city SET name=?, area=?, population=?, gdp=?, description=?, country_id = ? WHERE id=?;";
        try (Connection connection = getConnection();
        PreparedStatement ps = connection.prepareStatement(query)){
            ps.setString(1,city.getCityName());
            ps.setFloat(2, city.getArea());
            ps.setInt(3, city.getPopulation());
            ps.setInt(4, city.getGDP());
            ps.setString(5,city.getDescription());
            ps.setInt(6, city.getCountry().getCountryId());
            ps.setInt(7,city.getId());
            isEdited = ps.executeUpdate() > 0;
        }
        return isEdited;
    }

    @Override
    public boolean deleteCity(int id) throws SQLException {
        String query = "DELETE FROM city WHERE id=" + id + ";";
        boolean isDeleted;
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)){
            isDeleted = ps.executeUpdate() > 0;
        }
        return isDeleted;
    }
}
