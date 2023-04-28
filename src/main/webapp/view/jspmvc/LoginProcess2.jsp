<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--ID: <%=request.getParameter("user_id")%>--%>
<%--PASS: <%=request.getParameter("user_passwd")%> <br>--%>

<%--ID: ${param.user_id}<br>--%>
<%--PASS :${param.user_passwd}--%>

<%
    String id = request.getParameter("user_id");
    String pwd = request.getParameter("user_passwd");

    if (id.equals("admin") && pwd.equals("1234")) {
        session.setAttribute("id",id);
        session.setMaxInactiveInterval(60);
        response.sendRedirect("list.jsp");
        return;
    }

    response.sendRedirect("adminLogin.jsp");
%>
</body>
</html>
