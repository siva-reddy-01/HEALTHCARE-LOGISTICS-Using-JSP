import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ManagerLogin")
public class ManagerLogin extends HttpServlet
{

public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException

{

res.setContentType("text/html");
PrintWriter out = res.getWriter();

String email = req.getParameter("email");
String password = req.getParameter("password");

if(email.equals("Karthikdattu7@gmail.com") && password.equals("Karthik@18"))
{
HttpSession session = req.getSession();
session.setAttribute("email", email);
session.setAttribute("password", password);

res.sendRedirect("Managerhome.html");

}

else
{

out.println("Login Invalid");
//RequestDispatcher rd = req.getRequestDispatcher("loginmanager.html");
//rd.include(req, res);

}
}
}

