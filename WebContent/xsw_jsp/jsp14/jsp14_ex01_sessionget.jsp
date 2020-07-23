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
		Object obj1 = session.getAttribute("mySessionName"); //반환값은 무조건 objec타입임
		String mySessionName = (String)obj1; //문자열로 타입 변경
		out.println(mySessionName+"<br/>");
		
		Object obj2 = session.getAttribute("myNum"); //반환값은 무조건 objec타입임
		Integer myNum = (Integer)obj2; //정수로 타입 변경
		out.println(myNum+"<br/>");
		
		out.println("****************************** <br/>");
		
		String sName;
		String sValue;
		
		Enumeration enumeration = session.getAttributeNames(); //모든 값을 다 얻어옴.
		while(enumeration.hasMoreElements()){
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br/>");
			out.println("svalue : " + sValue + "<br/>");
		}
		
		out.println("******************************* <br/>");
		
		String sessionID = session.getId(); //세션 아이디를 가지고 옴. 스트링형으로 얻어옴.
		out.println("sessionID : " + sessionID + "<br/>");
		int sessionInter = session.getMaxInactiveInterval();
		out.println("sessionInter : " + sessionInter + "<br/>");
		
		out.println("******************************* <br/>");
		
		
	%>


</body>
</html>