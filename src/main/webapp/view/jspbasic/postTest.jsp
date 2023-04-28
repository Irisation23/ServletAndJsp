<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/post.do" method="POST">
      이름:<input type="text" name="name">
      점수:<input type="text" name="score">
      <input type="submit" value="Send">
      <input type="reset" value="Reset">
  </form>
</body>
</html>