<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
      let elementsByName = document.getElementsByName("ck");

      function ck_check() {
        $("form").submit();
      }
    </script>
</head>
<body>
<form action="popupCookie.jsp">
    <img src="Untitled.png" width="350" height="350"><br>
    <input type="checkbox" name="ck">
    <button type="button" onclick="ck_check()">닫기</button>
</form>
</body>
</html>
