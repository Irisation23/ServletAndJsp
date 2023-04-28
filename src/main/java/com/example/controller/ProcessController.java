package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ProcessController {

    ForwardController execute(HttpServletRequest req, HttpServletResponse resp);
}
