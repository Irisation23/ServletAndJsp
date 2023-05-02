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
<body>

<%! String id, pwd; %>

<%
    id = request.getParameter("id");
    pwd = request.getParameter("pwd");

    if (id.equals("abc") && pwd.equals("1234")) {
        session.setAttribute("id", id);
        session.setMaxInactiveInterval(30);
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("welcome.jsp");
    }
%>

</body>
</html>
