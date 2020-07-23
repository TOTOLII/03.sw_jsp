<%@page import="java.util.Arrays"%> <%--java.untill을 사용한다고 지정하면 자동으로 입력됨 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> page import를 사용한 값</h1>

	<%
		int[] iArr = {10,20,30};
		out.println(Arrays.toString(iArr));
	%>

</body>
</html>