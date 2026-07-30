<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>お問い合わせ内容確認</title>
	</head>

	<body>
		<h1>お問い合わせ内容確認</h1>
		<form action="${pageContext.request.contextPath}/contact/thanks" method="post">
			名前：${onamae}<br/>
			<input type="hidden" name="onamae" value="${onamae}"><br/>
			メールアドレス：${mail_address}<br/>
			<input type="hidden" name="mail_address" value="${mail_address}"><br/>
			性別：${sex}<br/>
			<input type="hidden" name="sex" value="${sex}"><br/>
			お問い合わせ種別：
			<%
			String[] cates = (String[]) request.getAttribute("cates");
			if (cates != null) {
			    for (String cate : cates) {
			%>
			<%= cate %><br/>
			<input type="hidden" name="cates" value="<%= cate %>">
			<%
			    }
			}
			%><br/>
			住まいエリア：${pref}<br/>
			<input type="hidden" name="pref" value="${pref}"><br/>
			メッセージ：
			<p style="white-space: pre-wrap;">${message}</p>
			<input type="hidden" name="message" value="${message}">
			<input type="submit" value="送信する">
		</form>
	</body>
</html>