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

    while (attributeNames.hasMoreElements()) {
        String attributeName = attributeNames.nextElement();
        Object attributeValue = session.getAttribute(attributeName);

        if (attributeValue instanceof String) {
            String nValue = (String) attributeValue;

            if (nValue.equals("abc")) {
                session.removeAttribute(attributeName);
            }
        }
    }
%>

<a href="sessionState.jsp">SessionState..</a>

<body>

</body>
</html>
