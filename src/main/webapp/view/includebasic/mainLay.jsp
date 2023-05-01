<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="main.jsp" %>
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
<h1>MainLayout.jsp</h1>
<table cellspacing="0" cellpadding="20" border="1" width="" align="center">
    <tr>
        <td colspan="2" bgcolor="#f0f8ff">
            <jsp:include page="top.jsp">
                <jsp:param name="param1" value="TopClass"/>
            </jsp:include>
        </td>
        <td>
            <% out.print(data); %>
            <%= data %>
        </td>
    </tr>
    <tr>
        <td colspan="2" bgcolor="#ffd700">
            <jsp:include page="left.jsp">
                <jsp:param name="param1" value="LeftClass"/>
            </jsp:include>
        </td>
        <td bgcolor="#87ceeb">
            <jsp:include page="right.jsp">
                <jsp:param name="param1" value="RightClass"/>
            </jsp:include>
        </td>
    </tr>
    <tr>
        <td colspan="2" bgcolor="#ffc0cb">
            <jsp:include page="bottom.jsp">
                <jsp:param name="data" value="<%= data %>"/>
                <jsp:param name="vi" value="${vi}"/>
            </jsp:include>
        </td>
    </tr>
</table>
</body>
</html>
