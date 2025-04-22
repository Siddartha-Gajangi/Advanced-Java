<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Report</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    color: #333;
    margin: 0;
    padding: 20px;
}

.report-card {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.report-card p {
    margin: 10px 0;
}

.report-card p:first-child {
    font-weight: bold;
    color: #0073e6;
}

</style>
</head>
<body>
<%
String rn= request.getParameter("roll");
String n=request.getParameter("name");
String b=request.getParameter("branch");
int t=Integer.parseInt( request.getParameter("tel") );
int h=Integer.parseInt( request.getParameter("hin") );
int e=Integer.parseInt( request.getParameter("eng") );
int m=Integer.parseInt( request.getParameter("mat") );
int sc=Integer.parseInt( request.getParameter("sci") );
int so=Integer.parseInt( request.getParameter("soc") );
int tot=t+h+e+m+sc+so;
float per=(float)tot/360*100;
%>
<div class="report-card">
    <p>Roll Number: <%=rn%></p>
    <p>Student's Name: <%=n%></p>
    <p>Student Branch: <%=b%></p>
    <p>Total Marks: <%=tot%></p>
    <p>Percentage: <%=per%>%</p>
    <p>
        <%
        if(per>80)
        {
            out.println("Passed In First Class");
        }
        else if(per<80 && per >60)
        {
            out.println("Passed In Second Class");
        }
        else if(per<60 && per >40)
        {
            out.println("Passed In Third Class");
        }
        else
        {
            out.println("Failed....!");
        }
        %>
    </p>
</div>
</body>
</html>


<%-- 
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
String rn= request.getParameter("roll");
String n=request.getParameter("name");
String b=request.getParameter("branch");
int t=Integer.parseInt( request.getParameter("tel") );
int h=Integer.parseInt( request.getParameter("hin") );
int e=Integer.parseInt( request.getParameter("eng") );
int m=Integer.parseInt( request.getParameter("mat") );
int sc=Integer.parseInt( request.getParameter("sci") );
int so=Integer.parseInt( request.getParameter("soc") );
int tot=t+h+e+m+sc+so;
float per=(float)tot/360*100;
out.println("Roll Number: "+rn+"<br>");
out.println("Students Name: "+n+"<br>");
out.println("Student Branch: "+b+"<br>");
out.println("Total Marks: "+tot+"<br>");
out.println("Percentage: "+per+"%<br>");
if(per>80)
	{
		out.println("Passed In First Class");
	}
else if(per<80 && per >60)
{
	out.println("Passed In Second Class");
}
else if(per<60 && per >40)
{
	out.println("Passed In Third Class");
}
else
{
	out.println("Failed....!");
}
%>
</body>
</html>
--%>