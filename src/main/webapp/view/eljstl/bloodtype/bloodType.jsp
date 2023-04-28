<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
      $(function () {

      });
    </script>
</head>
<fmt:requestEncoding value="UTF-8"/>
<body>
<c:set var="blood" value="${param.bType}"/>
<c:out value="${blood}"/>
<c:if test="${blood eq 'A'}">
<%--    <c:redirect url="A.jsp"></c:redirect>--%>
    <jsp:forward page="A.jsp"/>
</c:if>
<c:if test="${blood eq 'B'}">
    <%--    <c:redirect url="B.jsp"></c:redirect>--%>
    <jsp:forward page="B.jsp"/>
</c:if>
</body>
</html>
