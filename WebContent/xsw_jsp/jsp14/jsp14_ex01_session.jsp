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
		session.setAttribute("mySessionName", "mySessionData"); //(���� �̸�, ���� �����Ͱ�)
		session.setAttribute("mynum", 12345);
	%>
	
		<a href="jsp14_ex01_sessionget.jsp">sessionget</a>

</body>
</html>