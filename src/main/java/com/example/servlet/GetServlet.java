package com.example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "GET", urlPatterns = "/get")
public class GetServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");

        String name = req.getParameter("irum");
        String pwd = req.getParameter("pwd");

        resp.getWriter().append("<html><head><title></title></head>");
        resp.getWriter().append("<body>");

        resp.getWriter().append("이름 : " + name + "<br>");
        resp.getWriter().append("비밀번호 : " + pwd + "<br>");

        resp.getWriter().append("<a href='/hello'>"+ "처음으로" + "</a>");
        resp.getWriter().append("</body></html>");
    }
}
