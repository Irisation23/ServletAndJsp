package com.example.controller;

import com.example.dao.EmpDao;
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
        return new ForwardController(path, redirect);
    }
}
