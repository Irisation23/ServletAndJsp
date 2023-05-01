<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Optional" %>
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

    <%
        String color = "white";
        Cookie[] cookies = request.getCookies();
        Optional<Cookie> colorCookie = Arrays.stream(cookies)
                                             .filter(cookie -> "color".equals(cookie.getName()))
                                             .findFirst();

        if (colorCookie.isPresent()) {
            color = colorCookie.get().getValue();
        }

    %>
</head>
<body bgcolor="<%= color %>">

</body>
</html>
