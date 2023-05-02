package com.example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.catalina.Session;

@WebServlet(name = "loginCheck", urlPatterns = {"/loginCheck"})
public class LoginCheckServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doPost");

        String id = req.getParameter("id");
        String pwd = req.getParameter("pwd");

        if (id.equals("Admin") && pwd.equals("1234")) {
            req.getSession().setAttribute("id", id);
            req.getSession().setMaxInactiveInterval(60);
            resp.sendRedirect("view/session/sessionSuccess.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet");
        super.doGet(req, resp);
    }
}
