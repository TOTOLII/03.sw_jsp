<%@page import="java.util.Enumeration"%>
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
		Enumeration enu = session.getAttributeNames();
		while(enu.hasMoreElements()){
			String sName = enu.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
			
			if(sValue.equals("abcd")) out.println(sValue + "님 안녕하세요." + "<br/>");
		}
	
	%>
	
	<a href="jsp14_ex02_logout.jsp">로그아웃</a>

</body>
</html>