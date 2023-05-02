<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>관리자</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="copyright" content="Copyright 2009 @ high1 all rights reserved"/>
    <link href="../view/css/contents.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>

      $(function () {
        $("input#checker").attr("checked", '${cookieRequest['checker']}' === 'Admin');
        $("#btnSubmit").click(function () {
          $("form").submit();
        })
      })
    </script>
</head>

<body>
<form name="login" method="post" action="model2-login.do?cmd=model2-login">
    <div id="loginWrapper">
        <div class="loginForm">
            <fieldset>
                <legend>관리자 시스템 로그인</legend>
                <dl>
                    <dt><img src="../view/img/common/th_id.gif" alt="아이디"/></dt>
                    <dd>
                        <input type="text" name="id" class="text" id="user_id" />
                    </dd>

                    <dt><img src="../view/img/common/th_pw.gif" alt="비밀번호"/></dt>
                    <dd><input type="password" name="pwd" class="text" id="user_passwd"/></dd>
                </dl>
                <div class="btn">
                    <img id="btnSubmit" src="../view/img/button/btn_login.gif" alt="LOGIN" title="LOGIN"/>
                </div>

                <div class="saveId">
                    <input type="checkbox" id="checker" name="checker"/>
                    <img src="../view/img/common/save_id.gif" alt="아이디 저장"/>
                </div>
            </fieldset>
        </div>
    </div>
</form>
</body>
</html>