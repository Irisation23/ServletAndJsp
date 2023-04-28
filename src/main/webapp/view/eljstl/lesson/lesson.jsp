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
    <c:choose>
        <c:when test="${param.lesson eq 'java'}">Java Application</c:when>
        <c:when test="${param.lesson eq 'mysql'}">DBMS</c:when>
        <c:when test="${param.lesson eq 'html'}">FRONT APPLICATION</c:when>
        <c:when test="${param.lesson eq 'ajax'}">FRONT AJAX APPLICATION</c:when>
        <c:otherwise>
            OTHER LESSON!!!
        </c:otherwise>
    </c:choose>
</body>
</html>
