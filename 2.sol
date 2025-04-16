import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
            out.println("<h2>Username or Password cannot be empty.</h2>");
            return;
        }

        if (username.equalsIgnoreCase("user123") && password.equals("pass123")) {
            out.println("<h2>Welcome, " + username + "!</h2>");
        } else {
            out.println("<h2>Incorrect username or password.</h2>");
        }
    }
}
