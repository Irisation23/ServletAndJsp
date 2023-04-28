<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript">
      $(function () {

      });
    </script>
</head>
<body>
<c:if test="${param.item eq 'spring'}">
    <h1>spring</h1>
</c:if>
<h1>Python</h1>

<c:choose>
    <c:when test="${param.item eq 'spring'}">
        <h1>spring</h1>
    </c:when>
    <c:otherwise>
        <h1>Python</h1>
    </c:otherwise>
</c:choose>
</body>
</html>
