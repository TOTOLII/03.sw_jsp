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
		out.println(obj2+"<br/>");
		
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
		int sessionInter = session.getMaxInactiveInterval(); //세션의 유효시간 체크 초로 나타냄
		out.println("sessionInter : " + sessionInter + "<br/>");
		
		out.println("******************************* <br/>");
		
		
		session.removeAttribute("mySessionName"); //특정세션에 있는 데이터만 삭제
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br/>");
			out.println("svalue : " + sValue + "<br/>");
		}
		
		out.println("******************************* <br/>");

		session.invalidate(); //세션에 있는 모든 데이터를 삭제
		if(request.isRequestedSessionIdValid()){ //유용한 세션이 있는가에 대한 조건문
			out.println("session valid'");
		} else {
			out.println("session invalid");
		}
	%>
</body>
</html>