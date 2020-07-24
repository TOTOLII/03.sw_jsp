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
			
			if(sValue.equals("abcd")) session.removeAttribute(sName);
		}
		
	%>
	
	<a href="jsp14_ex02_sessiontest.jsp">sessiontest</a>


</body>
</html>