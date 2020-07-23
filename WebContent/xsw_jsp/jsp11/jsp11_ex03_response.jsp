<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
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
	int age;
%>

<%
	String str = request.getParameter("age"); //반환 된 값은 문자열이다.
	age = Integer.parseInt(str);  //반환 된 값은 문자열이기 때문에 정수형으로 꼭 바꿔 줘야 한다.
	
	if(age >= 20){
		response.sendRedirect("jsp11_ex03_response_pass.jsp?age=" + age);
	} else {
		response.sendRedirect("jsp_ex03_response_ng.jsp?age=" + age);
	}
%>

<%= age %>

</body>
</html>