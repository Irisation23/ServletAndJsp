<%@ page import="com.example.dao.EmpDao" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
		 pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="../model2/css/contents.css" rel="stylesheet" type="text/css" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%
		List<EmpDao> empList = (List<EmpDao>) request.getAttribute("empList");
		String cookieValue = (String) request.getAttribute("cookieValue");

		Cookie[] cookies = request.getCookies();

		String name = "";
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("id")) {
				name = cookie.getName();
			}
		}

		System.out.println(name);

	%>
</head>
<body >
	<div id="wrapper">
		<div id="header">
				<div class="topInfoWrap">
					<div class="topInfoArea clfix">
						<div class="loginWrap">
							<span class="fir">2022.05.17</span>
							<span>13:30:22</span>
							<span><em><%= cookieValue %></em> ���� �Ϸ� �Ǽ���</span>
							<a href="" class="btnLogout"><img src="../model2/img/common/btn_logout.gif" alt="�α׾ƿ�" /></a>
						</div>
					</div>
				</div>
				<div class="gnbSubWrap">
					
				</div>
			</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">�Խ��� ����Ʈ</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"><a href="#">�˻�</a></span>
							<span class="button"><a href="#">�۾���</a></span>
						</span>
					</div>

					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="95" />
							<col width="395" />
							<col width="95" />
							<col />
						</colgroup>
						<tbody>
						<tr>
							<th>�˻�</th>
							<td>
								<select>
									<option>�����ϼ���</option>
								</select>
								<input type="text" name="" class="inputText" size="30" />
							</td>
						</tr>
						</tbody>
					</table>

					<table class="bbsList">
						<colgroup>
							<col width="30" />
							<col width="130" />
							<col />
							<col width="150" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col" class="fir">NO.</th>
							<th scope="col">�ۼ���(���̵�)</th>
							<th scope="col">����</th>
							<th scope="col">�����</th>
							<th scope="col">�ۼ���</th>
						</tr>
						</thead>

						<tbody>
						<c:forEach var="emp" items="${empList}" varStatus="cnt">
							<tr>
								<td>${cnt.count}</td>
								<td class="fir">"${emp.getEmpno()}</td>
								<td>"${emp.getEname()}"</td>
								<td class="tal">${emp.getSal()}</td>
								<td>${emp.getHiredate()}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>

					<div class="paging">
						<a href="#"><img src="../model2/img/button/btn_first.gif" alt="ó��������" /></a>
						<a href="#"><img src="../model2/img/button/btn_prev.gif" alt="����" /></a>
						
						<span>
							<a href="#">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<strong>4</strong>
							<a href="#">5</a>
							<a href="#">6</a>
							<a href="#">7</a>
							<a href="#">8</a>
							<a href="#">9</a>
						</span>				

						<a href="#"><img src="../model2/img/button/btn_next.gif" alt="����" /></a>
						<a href="#"><img src="../model2/img/button/btn_last.gif" alt="������������" /></a>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>