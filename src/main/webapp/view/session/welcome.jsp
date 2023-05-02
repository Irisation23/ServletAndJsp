<%@ page import="java.util.Enumeration" %>
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
    Enumeration<String> attributeNames = session.getAttributeNames();

//    attributeNames.asIterator().forEachRemaining(i -> i.toString());

    int i = 0;
    while (attributeNames.hasMoreElements()) {
        i++;
        String sName = attributeNames.nextElement();
        String nValue = (String) session.getAttribute(sName);

        if (nValue.equals("abcde")) {
            out.print(nValue+ "님 안녕하세요! <br>");
        }
    }
%>

<body>
<h1>Welcome <%=session.getAttribute("id")%> 님</h1> <br>
<h1>session.getId() <%= session.getId()%></h1> <br>
<h1>session.getId() <%= session.getAttributeNames()%></h1> <br>
<a href="logout.jsp">로갓</a>
</body>
</html>
