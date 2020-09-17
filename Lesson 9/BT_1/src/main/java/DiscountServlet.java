import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("txtDescription");
        double price = Double.parseDouble(request.getParameter("txtPrice"));
        double percent = Double.parseDouble(request.getParameter("txtPercent"));

        double DiscountAmount = price * percent * 0.01;
        double DiscountPrice = price - DiscountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("Procduct Description: " + description);
        writer.println("<br>");
        writer.println("List Price: " + price);
        writer.println("<br>");
        writer.println("Discount Percent: " + percent);
        writer.println("<br>");
        writer.println("Discount Amount: " + DiscountAmount);
        writer.println("<br>");
        writer.println("Discount Price: " + DiscountPrice);
        writer.println("</html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
