package vn.edu.hcmuaf.fit.lab4;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.lab4.services.AuthService;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        AuthService service = new AuthService();

        if (service.checkLogin(uname,pass)) {
            response.sendRedirect("index.jsp");
        }else {
            request.setAttribute("error", "Dang nhap khong thanh cong");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }
}
