package com.example.controller;

import com.example.dao.EmpDao;
import java.util.Arrays;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class ListController implements ProcessController {

    private String path;
    private boolean redirect;

    @Override
    public ForwardController execute(HttpServletRequest req, HttpServletResponse resp) {
        req.setAttribute("empList", EmpDao.getInstance().selectEmpList());

        String id = "";
        Cookie[] cookies = req.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("id")) {
                resp.addCookie(cookie);
            }
        }

        return new ForwardController(path, redirect);
    }
}
