<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<% 
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("abcd")&&pw.equals("1234")){
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60); //60초 쿠키 생성
			response.addCookie(cookie);
			response.sendRedirect("jsp13_ex02_welcome.jsp");
		} else {
			response.sendRedirect("jsp13_ex02_login.jsp");
		}
	%>
</body>
</html>