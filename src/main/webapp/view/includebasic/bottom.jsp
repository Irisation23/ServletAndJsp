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
<%
    String data = request.getParameter("data");
    String vi = request.getParameter("vi");
%>
<body>
BOTTOM
Data1: <%= data %>
Data2: <%= vi%>

Data1: ${data}
Data2: ${vi}
</body>
</html>
