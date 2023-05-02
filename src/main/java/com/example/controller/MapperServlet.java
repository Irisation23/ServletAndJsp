package com.example.controller;

public class MapperServlet {

    public static ProcessController getMapper(String cmd) {
        ProcessController processController = null;

        if (cmd.equalsIgnoreCase("login")) {
            processController = new LoginController("", false);
        }

        if (cmd.equals("list")) {
            processController = new ListController("/view/jspmvc2/list.jsp", false);
        }

        if (cmd.equals("model2-login")) {
            processController = new ListController("/model2/list.jsp", false);
        }

        return processController;
    }

}
