package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/dis")
public class DisplayServlet extends GenericServlet {
	@Override
	public void service(ServletRequest req,ServletResponse res)throws IOException,ServletException
	{
		RequestDispatcher rd = req.getRequestDispatcher("/Display.jsp");
		rd.forward(req, res);
	}
}
