package com.example.model;

import javax.servlet.http.Cookie;

public class LoginModel {

    private final String ADMIN_ID = "Admin";
    private final String ADMIN_PWD = "1234";

    public boolean hasIdCookie(Cookie[] cookies) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("id")) {
                cookie.setMaxAge(0);
                return true;
            }
        }

        return false;
    }

    public boolean isAdmin(String id, String pwd) {
        return id.equals(ADMIN_ID) && pwd.equals(ADMIN_PWD);
    }
}
