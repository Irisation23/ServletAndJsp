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
<c:if test="${id == null or id eq ''}">
    <c:redirect url="/view/session/sessionLogin.jsp"/>
</c:if>
<body>
<a href="${pageContext.request.contextPath}/logoutServlet">${id}님 로그아웃</a>
</body>
</html>
