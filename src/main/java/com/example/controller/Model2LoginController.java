package com.example.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class Model2LoginController implements ProcessController {

    private String path;
    private boolean redirect;
    @Override
    public ForwardController execute(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Model2Controller");

        String id = req.getParameter("user_id");
        String pwd = req.getParameter("user_passwd");

        if (id.equals("Admin") && pwd.equals("1234")) {
            Cookie[] cookies = req.getCookies();

            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("id")) {
                        cookie.setValue(id);
                        cookie.setMaxAge(30);
                        cookie.setPath("/");
                        resp.addCookie(cookie);
                        break;
                    }
                }
            }
            else {
                Cookie cookie = new Cookie("id", id);
                cookie.setMaxAge(30);
                cookie.setPath("/");
                resp.addCookie(cookie);
            }

            path = "list.do?cmd=list";
            redirect = false;
        }

        return null;
    }
}
