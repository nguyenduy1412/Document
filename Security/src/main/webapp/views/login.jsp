<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${mess}</h1>
	<form name="loginForm" action="<c:url value="j_spring_security_login" />" method="POST">
		<input type="text " name="username" />
		<br>
		<input type="password" name="password" />
		<br>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<button type="submit">Login</button>
		
	</form>
</body>
</html>