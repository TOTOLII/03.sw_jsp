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
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getValue().equals("abcd")){
					cookies[i].setMaxAge(0); 
					response.addCookie(cookies[i]); //쿠키를 재설정 했으니 탑재해야함
				}
			}
	 	}	
		
		response.sendRedirect("jsp13_ex01_cookietest.jsp");
	%>
	

</body>
</html>