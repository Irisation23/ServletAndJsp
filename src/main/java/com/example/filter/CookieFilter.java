package com.example.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter(filterName ="cookieFilter", urlPatterns = {"/model2/model2-list.do", "/model2/list.jsp"})
public class CookieFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {

        System.out.println("--------------- 쿠키 필터 시작--------------------");
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        Cookie[] cookies = httpRequest.getCookies();

        boolean isLoggedIn = false;

        // 쿠키에서 로그인 정보를 확인
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("id")) {
                    isLoggedIn = true;
                    break;
                }
            }
        }

        // 로그인되어 있지 않다면 로그인 페이지로 이동
        if (!isLoggedIn) {
            httpResponse.sendRedirect("/model2/cookieAdminLogin.jsp");
            return;
        }

        // 다음 필터 또는 서블릿 호출
        chain.doFilter(request, response);
        System.out.println("--------------- 쿠키 필터 끝--------------------");
    }
}
