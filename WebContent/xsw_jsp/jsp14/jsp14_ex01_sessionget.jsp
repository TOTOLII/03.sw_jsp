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
		Object obj1 = session.getAttribute("mySessionName"); //��ȯ���� ������ objecŸ����
		String mySessionName = (String)obj1; //���ڿ��� Ÿ�� ����
		out.println(mySessionName+"<br/>");
		
		Object obj2 = session.getAttribute("myNum"); //��ȯ���� ������ objecŸ����
		Integer myNum = (Integer)obj2; //������ Ÿ�� ����
		out.println(obj2+"<br/>");
		
		out.println("****************************** <br/>");
		
		String sName;
		String sValue;
		
		Enumeration enumeration = session.getAttributeNames(); //��� ���� �� ����.
		while(enumeration.hasMoreElements()){
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br/>");
			out.println("svalue : " + sValue + "<br/>");
		}
		
		out.println("******************************* <br/>");
		
		String sessionID = session.getId(); //���� ���̵� ������ ��. ��Ʈ�������� ����.
		out.println("sessionID : " + sessionID + "<br/>");
		int sessionInter = session.getMaxInactiveInterval(); //������ ��ȿ�ð� üũ �ʷ� ��Ÿ��
		out.println("sessionInter : " + sessionInter + "<br/>");
		
		out.println("******************************* <br/>");
		
		
		session.removeAttribute("mySessionName"); //Ư�����ǿ� �ִ� �����͸� ����
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br/>");
			out.println("svalue : " + sValue + "<br/>");
		}
		
		out.println("******************************* <br/>");

		session.invalidate(); //���ǿ� �ִ� ��� �����͸� ����
		if(request.isRequestedSessionIdValid()){ //������ ������ �ִ°��� ���� ���ǹ�
			out.println("session valid'");
		} else {
			out.println("session invalid");
		}
	%>
</body>
</html>