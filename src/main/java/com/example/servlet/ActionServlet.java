package com.example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().append("<html><head><title>TestServlet</head></title>");
        resp.getWriter().append("<body bgcolor = red>");
        resp.getWriter().append("<a href='/'>hi</a>");

        resp.getWriter().append("</body>");
        resp.getWriter().append("</html>");
    }
}
