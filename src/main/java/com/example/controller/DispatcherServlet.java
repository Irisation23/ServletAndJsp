package com.example.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servlet", urlPatterns = {"*.do"})
public class DispatcherServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cmd = req.getParameter("cmd");
        ProcessController pc = MapperServlet.getMapper(cmd);
        ForwardController fc = pc.execute(req, resp);

        System.out.println("디스패처 서블릿에 입장한 RequestURI(): " + req.getRequestURI());

        if (fc.isRedirect()) { // login, list, null
            System.out.println("리다이렉트 입장한 cmd: " + req.getParameter("cmd"));
            resp.sendRedirect(fc.getPath()); // list.do?cmd=list; , /view/jspmvc2/list.jsp
            return;
        }

        System.out.println("포워드에 입장한 fd.getPath(): " + fc.getPath());
        RequestDispatcher rd = req.getRequestDispatcher(fc.getPath());
        rd.forward(req, resp);

        System.out.println("DispatcherServlet");
    }
}
