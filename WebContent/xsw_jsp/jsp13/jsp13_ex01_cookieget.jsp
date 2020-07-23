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
		Cookie[] cookies = request.getCookies(); //쿠키를 받아옴, 몇개인지 모름으로 배열로 받아옴
	
		for(int i=0; i<cookies.length; i++) { //
			String str = cookies[i].getName(); //쿠키의 이름 가져오기
			if(str.equals("cookieN")) {
				out.println("cookies[" + i + "] name :" + cookies[i].getName() + "<br/>");
				out.println("cookies[" + i + "] value :" + cookies[i].getValue() + "<br/>");
				out.println("=================<br/>");
			}
		}
	%>

<a href="jsp13_ex01_cookiedel.jsp"> cookie delete</a>

</body>
</html>