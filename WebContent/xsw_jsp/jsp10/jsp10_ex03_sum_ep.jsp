<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>ǥ���� ���</h1>

	<%!
		int i_ep = 10;
		String str_ep = "abc";
		
		private int sum_ep(int a, int b) {
			return a+b;
		}
	%>
	
	<%= i_ep %> <br/>
	<%= str_ep%> <br/>
	<%= sum_ep(2,5) %>
	
</body>
</html>