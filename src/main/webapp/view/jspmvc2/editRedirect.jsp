<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
TITLE:
<%=
request.getParameter("title")
%>
BEANREQUEST<%=request.getAttribute("bean")%>
BEANSESSION<%=session.getAttribute("bean")%>
</body>
</html>
