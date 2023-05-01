<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%
        int cnt = 0;
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("ck")) {
                ++cnt;
            }
        }
    %>

    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function windowPop() {
          let cnt = <%= cnt%>;

          if (cnt === 1) {
            this.close();
            return;
          }

          window.open("popup.jsp", "id", "left = 100, top = 50, width=450, height = 400");
        }
    </script>
</head>


<body onload="windowPop()">

</body>
</html>
