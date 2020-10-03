package Service;

import Model.City;

import java.sql.SQLException;
import java.util.List;

public interface IService {
    List<City> showAllCity();
    City getCityById(int id);
    boolean addNewCity(City city);
    boolean editCityInformation(int id);
    boolean deleteCity(int id) throws SQLException;

}
