package Controller;

import Model.City;
import Model.Country;
import Service.CityService;
import Service.CountryService;
import Service.ValidateInput;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/City")
public class CityController extends HttpServlet {
    CityService cityService = new CityService();
    CountryService countryService = new CountryService();
    ValidateInput validateInput = new ValidateInput();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addCity":
                addCity(request,response);
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "view":
                viewCityDetail(request,response);
                break;
            case "addCity":
                showAddForm(request,response);
                break;
            case "delete":
                try {
                    deleteCity(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                showAllCity(request,response);
                break;
        }
    }

    private void showAllCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<City> cityList = cityService.showAllCity();
        request.setAttribute("cityList", cityList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/CityList.jsp");
        dispatcher.forward(request, response);
    }

    private void viewCityDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        City city = cityService.getCityById(id);
        request.setAttribute("city", city);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ViewCityDetail.jsp");
        dispatcher.forward(request,response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Country> countryList = countryService.getAllCountry();
        request.setAttribute("countryList", countryList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/AddCityForm.jsp");
        dispatcher.forward(request, response);
    }

    private void addCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String country = request.getParameter("country");
        float area = Float.parseFloat(request.getParameter("area"));
        int population = Integer.parseInt(request.getParameter("population"));
        int gdp = Integer.parseInt(request.getParameter("gdp"));
        String description = request.getParameter("description");
        if (validateInput.checkStringInput(name) && validateInput.checkStringInput(country)
        && validateInput.checkFloatInput(area) && validateInput.checkIntInput(population)
                && validateInput.checkIntInput(gdp) && validateInput.checkStringInput(description)) {
            City city = new City(name, area, population, gdp, description, countryService.getCountryByName(country));
            cityService.addNewCity(city);
            response.sendRedirect("/City");
            request.setAttribute("message", "Thêm thành phố thành công!");
        }else {
            request.setAttribute("alert", "Nhập sai thông tin, nhập lại!");
            showAddForm(request,response);
        }
    }

    private void deleteCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        cityService.deleteCity(id);
        List<City> cityList = cityService.showAllCity();
        request.setAttribute("cityList", cityList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/CityList.jsp");
        dispatcher.forward(request, response);
        request.setAttribute("message", "Xóa thành công!");
    }
}
