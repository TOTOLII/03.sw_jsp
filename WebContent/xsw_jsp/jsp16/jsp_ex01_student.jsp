<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="student" class="jsp16.Jsp16_ex01_student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="student" property="name" value="홍길동"/>
    <jsp:setProperty name="student" property="age" value="11"/>
    <jsp:setProperty name="student" property="grade" value="12"/>
    <jsp:setProperty name="student" property="studentNum" value="30"/>
 
 
 이름 : <jsp:getProperty property="name" name="student"/> <br/>
 나이 :    <jsp:getProperty property="age" name="student"/> <br/>
 학년 :    <jsp:getProperty property="grade" name="student"/> <br/>
학생번호:    <jsp:getProperty property="studentNum" name="student"/>

</body>
</html>