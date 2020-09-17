package Controller;

import Entities.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CustomerController", urlPatterns = {"/CustomerController"})
public class CustomerController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;
        ArrayList<Customer> customerList;
        switch (action) {
            case "login":
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean isLogin = login(username, password);
                if (isLogin) {
                    customerList = getAll();
                    request.setAttribute("customerList", customerList);
                    dispatcher = getServletContext().getRequestDispatcher("/Staff/index.jsp");
                    dispatcher.forward(request,response);

                }
                break;
            default:
                response.sendRedirect("/User/login.jsp");
                break;
        }
    }

    protected ArrayList<Customer> getAll() {
        ArrayList<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Phạm Anh Nghĩa", "1994-07-13", "Hà Nội", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fbaocantho.com.vn%2F-captain-marvel-phim-ve-nu-sieu-anh-hung-duoc-cho-doi-a107377.html&psig=AOvVaw29dhkYMBRSDp6Y2YTmTt-9&ust=1600441176708000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNiOupC68OsCFQAAAAAdAAAAABAD"));
        customerList.add(new Customer("Nguyễn Văn Nam", "1994-07-14", "Bắc Giang", "main/Images/a.jpg"));
        customerList.add(new Customer("Nguyễn Thái Hòa", "1994-07-15", "Nghệ An", "main/Images/a.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa", "1994-07-16", "Quảng Bình", "main/Images/a.jpg"));
        return customerList;
    }

    protected boolean login(String userName, String password) {
        boolean isLogined = false;
        if (userName.equals("admin") && password.equals("admin")) {
            isLogined = true;
        }
        return isLogined;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        action = action == null ? "" : action;
        switch (action) {
            case "login":
                response.sendRedirect("/User/login.jsp");
                break;
            default:
                response.sendRedirect("/User/login.jsp");
                break;
        }
    }
}
