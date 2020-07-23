<%-- 서버에서 실행 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		Cookie cookie = new Cookie("cookieN", "cookieV");
		cookie.setMaxAge(60*60); //1시간 동안 생존
		response.addCookie(cookie);
	%>
	
	<a href="jsp13_ex01_cookieget.jsp">cookie get</a>


</body>
</html>