package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class LoginController implements ProcessController {

    private String path;
    private boolean redirect;

    @Override
    public ForwardController execute(HttpServletRequest req, HttpServletResponse resp) {

        System.out.println("LoginController");

        String id = req.getParameter("user_id");
        String pwd = req.getParameter("user_passwd");

        if (id.equals("Admin") && pwd.equals("1234")) {
            req.getSession().setAttribute("id", id);
            req.getSession().setMaxInactiveInterval(30);
            path = "list.do?cmd=list";
            redirect = true;
        }

        return new ForwardController(path, redirect);
    }
}
