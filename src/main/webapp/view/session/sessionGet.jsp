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
<body>

<%
    String mySessionName = (String) session.getAttribute("mySessionName");
    out.print(mySessionName + "<br>");

    String myNum = (String) session.getAttribute("myNum");
    out.print(myNum + "<br>");
    out.print("*****************************<br>");

    Enumeration<String> attributeNames = session.getAttributeNames();

    while (attributeNames.hasMoreElements()) {
        String attributeName = attributeNames.nextElement();
        Object attributeValue = session.getAttribute(attributeName);

        if (attributeValue instanceof String) {
            String nValue = (String) attributeValue;

            if (nValue.equals("abc")) {
                out.print("SessionName: " + attributeName + "<br>");
                out.print("SessionValue: " + nValue + "<br>");
            }
        }
    }

    String sessionID = session.getId();
    out.print("sessionID: " + sessionID + "<br>");
    int sessionInter = session.getMaxInactiveInterval();

    out.print("MaxInactiveInterval " + sessionInter + "<br>");
    out.print("*****************************<br>");

    session.invalidate(); //세션 종료

    if (request.isRequestedSessionIdValid()) { // 유효한 세션 아이디가 있는가?
        out.print("session Valid");
    } else {
        out.print("session InValid"); //모두 무효하다
    }

    out.print(session);

%>

</body>
</html>
