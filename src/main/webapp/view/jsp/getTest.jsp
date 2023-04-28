<%--
  Created by IntelliJ IDEA.
  User: P_HM
  Date: 2023/04/26
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>GET TEST</h1>
<form method="GET" action="/get">
    이름 : <input type="text" name="irum"> <br>
    비밀번호 : <input type="password" name="pwd">

    <BUTTON type="submit">전송</BUTTON>
    <BUTTON type="reset">취소</BUTTON>
</form>

<h1>POST TEST</h1>
<form method="POST" action="/post">
  이름 : <input type="text" name="irum"> <br>
  비밀번호 : <input type="password" name="pwd">

  <BUTTON type="submit">전송</BUTTON>
  <BUTTON type="reset">취소</BUTTON>
</form>

</body>
</html>
