<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.KadaiAccount" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>下記の内容で登録します。よろしいですか？(´・ω・`)</p>
	<%
		KadaiAccount accounts = (KadaiAccount)session.getAttribute("input_data");
	%>
	名前：<%=accounts.getName() %><br>
	年齢：<%=accounts.getAge() %><br>
	性別：<%=accounts.getSex() %><br>
	電話番号：<%=accounts.getTell() %><br>
	メール：<%=accounts.getMail() %><br>
	パスワード：********<br>
	<a href="ExecuteServlet">OK</a><br>
	<a href="RegisterFormServlet">戻る</a>
</body>
</html>