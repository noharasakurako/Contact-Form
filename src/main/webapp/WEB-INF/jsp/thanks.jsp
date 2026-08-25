<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
		<title>お問い合わせ完了</title>
	</head>

	<body>
		<h1>お問い合わせ完了</h1><br/>
			名前：${onamae}<br/>
			メールアドレス：${mail_address}<br/>
			性別：${sex}<br/>
			お問い合わせ種別：
			<c:forEach var="cate" items="${cates}">
				${cate}<br/>
			</c:forEach>
			<br/>
			住まいエリア：${pref}<br/>
			メッセージ：
			<p style="white-space: pre-wrap;">${message}</p>
			<a href="${pageContext.request.contextPath}/contact/input">入力画面へ戻る</a>
	</body>
</html>