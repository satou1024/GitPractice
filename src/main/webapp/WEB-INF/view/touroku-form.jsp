<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.KadaiAccount" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>うんこ</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			KadaiAccount ac = (KadaiAccount)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規会員登録</h3>
		<form action="ConfirmServlet" method="post">
			名前：<input type="text" name="name" value="<%=ac.getName()%>"><br>
			年齢：<input type="text" name="age" value="<%=ac.getAge() %>>"><br>
			性別：<br>
			<input type="radio" name="sex" value="<%=ac.getSex() %>">男<br>
			<input type="radio" name="sex" value="<%=ac.getSex() %>">女<br>
			電話番号：<input type="text" name="tell" value="<%=ac.getTell() %>>"><br>
			メール：<input type="email" name="mail" value="<%=ac.getMail()%>"><br>
			パスワード：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規会員登録</h3>
	<form action="ConfirmServlet" method="post">
		名前：<input type="text" name="name"><br>
			年齢：<input type="text" name="age"><br>
			性別：<br>
			<input type="radio" name="sex" value="男">男<br>
			<input type="radio" name="sex" value="女">女<br>
			電話番号：<input type="text" name="tell"><br>
		メール：<input type="email" name="mail"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>

</body>
</html>