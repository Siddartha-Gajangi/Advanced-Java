<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 table {
 		border-collapse: collapse;
 		
 		}
 table,th {
 		border : 1px solid black;
 		}
</style>
</head>
<body>
<%
String Code=request.getParameter("bcode");
String Name=request.getParameter("bname");
String Author=request.getParameter("bauthor");
String Price=request.getParameter("bprice");
String Quantity=request.getParameter("bqty");
%>
<table border="solid-black">
<tr>
<th>Book Code</th>
<td><%=Code %></td>
</tr>
<tr>
<th>Book Name</th>
<td><%=Name %></td>
</tr>
<tr>
<th>Book Author</th>
<td><%=Author %></td>
</tr>
<tr>
<th>Book Price</th>
<td><%=Price %></td>
</tr>
<tr>
<th>Quantity</th>
<td><%=Quantity %></td>
</tr>
</table>
</body>
</html>