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
    <p>LESSON LIST</p>
    <h1>JAVA APP</h1>
    <jsp:include page="lesson.jsp">
        <jsp:param name="lesson" value="java"/>
    </jsp:include>
    <jsp:include page="lesson.jsp">
        <jsp:param name="lesson" value="mysql"/>
    </jsp:include>
    <jsp:include page="lesson.jsp">
        <jsp:param name="lesson" value="html"/>
    </jsp:include>
    <jsp:include page="lesson.jsp">
        <jsp:param name="lesson" value="ajax"/>
    </jsp:include>
</body>
</html>
