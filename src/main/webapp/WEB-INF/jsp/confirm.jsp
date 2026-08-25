<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
		<title>お問い合わせ内容確認</title>
	</head>

	<body>
		<h1>お問い合わせ内容確認</h1>
		<form action="${pageContext.request.contextPath}/contact/thanks" method="post">
			名前：<c:out value="${onamae}" /><br/>
			<input type="hidden" name="onamae" value="${fn:escapeXml(onamae)}"><br/>
			メールアドレス：<c:out value="${mail_address}" /><br/>
			<input type="hidden" name="mail_address" value="${fn:escapeXml(mail_address)}"><br/>
			性別：<c:out value="${sex}" /><br/>
			<input type="hidden" name="sex" value="${fn:escapeXml(sex)}"><br/>
			お問い合わせ種別：
			<c:forEach var="cate" items="${cates}">
				<c:out value="${cate}" /><br/>
    			<input type="hidden" name="cates" value="${fn:escapeXml(cate)}">
			</c:forEach>
			<br/>
			住まいエリア：<c:out value="${pref}" /><br/>
			<input type="hidden" name="pref" value="${fn:escapeXml(pref)}"><br/>
			メッセージ：
			<p style="white-space: pre-wrap;"><c:out value="${message}" /></p>
			<input type="hidden" name="message" value="${fn:escapeXml(message)}">
			<input type="submit" value="送信する">
		</form>
	</body>
</html>