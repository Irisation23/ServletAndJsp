<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%
    request.setCharacterEncoding("UTF-8");
%>
</head>

<jsp:useBean id="bean" class="com.example.model.BoardDao" scope="request"/>
<jsp:setProperty name="bean" property="*"/>

<body>

<jsp:getProperty name="bean" property="no"/>
<%= bean.getNo() %>
<%= bean %>
<a href="editRedirect.jsp">editRedirect.jsp</a>
</body>
</html>
