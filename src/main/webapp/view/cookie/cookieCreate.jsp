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
    // 쿠키생성, 브라우저안에 쿠키의 정보를 넣어준다.
    String color = request.getParameter("color"); // name 필드에 세팅되어 있는 값을 따라감.
    Cookie cookie = new Cookie("color", color);
    cookie.setMaxAge(30);
    response.addCookie(cookie);

    response.sendRedirect("cookie2.jsp");
%>
<body>

</body>
</html>
