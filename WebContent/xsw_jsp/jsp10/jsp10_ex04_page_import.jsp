<%@page import="java.util.Arrays"%> <%--java.untill�� ����Ѵٰ� �����ϸ� �ڵ����� �Էµ� --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> page import�� ����� ��</h1>

	<%
		int[] iArr = {10,20,30};
		out.println(Arrays.toString(iArr));
	%>

</body>
</html>