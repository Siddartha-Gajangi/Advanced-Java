<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String uName= request.getParameter("uname");
String pass=request.getParameter("pass");
String fName=request.getParameter("fname");
String lName=request.getParameter("lname");
String city=request.getParameter("city");
String mailId=request.getParameter("mid");
String phno=request.getParameter("pno");
out.println("****** USER DETAILS *********<br>");
out.println("User-Name:"+uName+"<br>");
out.println("PassWord:"+pass+"<br>");
out.println("First-name:"+fName+"<br>");
out.println("Last-Name:"+lName+"<br>");
out.println("City:"+city+"<br>");
out.println("Mail-Id:"+mailId+"<br>");
out.println("PhoneNumber:"+phno+"<br>");
%>
</body>
</html>