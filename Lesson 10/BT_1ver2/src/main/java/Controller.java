import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Controller", urlPatterns = "/list")
public class Controller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                String name = request.getParameter("name");
                String dob = request.getParameter("dateOfBirth");
                String address = request.getParameter("address");
                String imageurl = request.getParameter("imageUrl");
                ArrayList<Customer> customerList = getCustomer(name, dob, address, imageurl);
                request.setAttribute("customerList", customerList);
                RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/AddForm.jsp");
                dispatcher.forward(request, response);


    }

    protected ArrayList<Customer> getCustomer(String name, String dob, String address, String imageurl) {
        ArrayList<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer(name, dob, address, imageurl));
        return customerList;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
