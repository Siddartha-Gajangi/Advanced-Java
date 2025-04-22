package user;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
@WebServlet("/sid")
public class User implements Servlet{
	public void init(ServletConfig scf) throws ServletException
	{
		//NOCode
	}
	public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
	{
		String id= req.getParameter("uid");
		String fname= req.getParameter("ufname");
		String lname = req.getParameter("ulname");
		String mid= req.getParameter("mid");
		Long pno= Long.parseLong(req.getParameter("phno"));
		
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		pw.println("UserId: "+id+"<br>");
		pw.println("UserFirstName: "+fname+"<br>");
		pw.println("UserLastName: "+lname+"<br>");
		pw.println("UserMailId: "+mid+"br");
		pw.println("UserPhoneNumber: "+pno+"<br>");
		
	}
	public void destroy() 
	{
		//NOCode
	}
	public String getServletInfo()
	{
		return "This Servet will display Customer details";
	}
	public ServletConfig getServletConfig() 
	{
		return this.getServletConfig();
	}
}



























