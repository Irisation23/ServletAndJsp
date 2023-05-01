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
<%
    String ck = request.getParameter("ck");

    if (ck != null && ck.equals("on")) {
        Cookie cookie = new Cookie("ck", ck);
        cookie.setMaxAge(30);
        response.addCookie(cookie);
    }

    response.sendRedirect("cookie3.jsp");
%>
<body>

</body>
</html>
