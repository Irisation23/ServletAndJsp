package com.example.controller;

import com.example.model.LoginModel;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Model2LoginController implements ProcessController {

    private String path;
    private boolean redirect;

    private final LoginModel loginModel = new LoginModel();

    public Model2LoginController(String path, boolean redirect) {
        this.path = path;
        this.redirect = redirect;
    }

    @Override
    public ForwardController execute(HttpServletRequest req, HttpServletResponse resp) {

        String id = req.getParameter("id");
        String pwd = req.getParameter("pwd");

        if (loginModel.hasIdCookie(req.getCookies()) || loginModel.isAdmin(id, pwd)) {
            Cookie cookie = new Cookie("id", id);
            cookie.setPath("/");
            cookie.setMaxAge(30);
            resp.addCookie(cookie);
        } else {
            Cookie cookie = new Cookie("id", "비회원");
            cookie.setPath("/");
            cookie.setMaxAge(30);
            resp.addCookie(cookie);
        }

        path = "model2-list.do?cmd=model2-list";
        redirect = true;

        return new ForwardController(path, redirect);
    }
}
