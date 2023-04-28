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
    <form action="bloodType.jsp" method="post">
        이름 : <input type="text" name="user">
        <input type="radio" name="bType" value="A"> A형 <br>
        <input type="radio" name="bType" value="B"> B형 <br>
        <input type="radio" name="bType" value="AB"> AB형 <br>
        <input type="radio" name="bType" value="O"> O형 <br><br>
        <button type="submit">보내기</button>
    </form>
</body>
</html>
