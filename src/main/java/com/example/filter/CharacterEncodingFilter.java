package com.example.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(filterName = "characterEncodingFilter", urlPatterns = "/*")
public class CharacterEncodingFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        System.out.println("--------------캐릭터 인코딩 필터 시작-----------------");
        chain.doFilter(request, response);
        System.out.println("--------------캐릭터 인코딩 필터 끝-----------------");
    }
}