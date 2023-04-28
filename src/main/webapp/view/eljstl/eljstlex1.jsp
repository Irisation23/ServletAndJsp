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
    <c:forEach begin="1" end="10" var="i">
        <h1>Test${i}</h1>
    </c:forEach>

    <c:forTokens items="java, html, mysql, Script, reAct, Spring" delims = "," var="i">
        <c:out value="${name}"></c:out>
    </c:forTokens>

    <c:set var="i" value="java"/>
    <c:set var="k" value="${i}"/>

    ${k ne k and 5 > 3}

    <c:if test="${u eq 'java'}">
        <c:redirect url=""></c:redirect>
    </c:if>

</body>
</html>
