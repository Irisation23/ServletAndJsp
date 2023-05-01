<%@ page import="java.util.Arrays" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
      $(function () {

      });
    </script>
</head>
<%!
    private void removeIdCookieIfExists(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("id") && request.getParameter("checker") == null) {
                cookie.setValue("");
                cookie.setPath("/");
                response.addCookie(cookie);

                RequestDispatcher dispatcher = request.getRequestDispatcher("/view/cookie/cookieAdminLogin.jsp");
                dispatcher.forward(request, response);
                break;
            }
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/cookie/cookieAdminLogin.jsp");
        dispatcher.forward(request, response);
    }
%>

<%
    String id = request.getParameter("user_id");
    String checker = request.getParameter("checker");

    if ("on".equals(checker)) {
        Cookie cookie = new Cookie("id", id);
        cookie.setMaxAge(30);
        cookie.setPath("/");
        response.addCookie(cookie);
        response.sendRedirect("cookieAdminLogin.jsp");
        return;
    } else {
        removeIdCookieIfExists(request, response);
    }
%>

<body>

</body>
</html>
