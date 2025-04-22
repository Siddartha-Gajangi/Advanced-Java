package test;
import java.io.*;
import jakarta.servlet.*;
@SuppressWarnings("serial")
public class DisplayServlet extends GenericServlet 
{
	@Override
   public void service(ServletRequest req,ServletResponse res)throws
   ServletException,IOException
   {
	   ServletConfig scf = super.getServletConfig();
	   req.setAttribute("sf", scf);
	   req.getRequestDispatcher("Display.jsp").forward(req, res);
   }
}
