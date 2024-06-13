import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/calculateArea")
public class CalculateArea extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String radiusStr = request.getParameter("radius");
        try {
            double radius = Double.parseDouble(radiusStr);
            double area = Math.PI * radius * radius;

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Area of Circle</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>The area of the circle is: " + area + "</h1>");
            out.println("<a href='index.jsp'>Calculate another area</a>");
            out.println("</body>");
            out.println("</html>");
        } catch (NumberFormatException e) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Please enter a valid number for the radius.</h1>");
            out.println("<a href='index.jsp'>Try again</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
