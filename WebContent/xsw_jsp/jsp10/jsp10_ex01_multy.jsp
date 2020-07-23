<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> 2곱셈</h1>
<% 
	int i = 0;
	while(true){
		i++;
		out.println("2 * " + i + " = " + (2*i) +"<br />");
%>

   =========<br/>

<% 
	if(i>=9) break;
	}
%>

</body>
</html>