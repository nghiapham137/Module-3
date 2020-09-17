import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ConverterServlet", urlPatterns = "/")
public class ConverterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final float VND = 22000;
        float amount = Float.parseFloat(request.getParameter("amount"));
        float usd = amount / VND;

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h1>VND: " + amount + "</h1>");
        printWriter.println("<h1>Rate: " + VND + "</h1>");
        printWriter.println("<h1>USD: " + usd + "</h1>");
        printWriter.println("</html>");
    }
}
