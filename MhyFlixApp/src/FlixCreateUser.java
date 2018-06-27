import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.net.URI;
import java.util.ArrayList;
import java.math.BigDecimal;

public class FlixCreateUser extends HttpServlet
{
	public void init() throws ServletException {
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/x-www-form-urlencoded");
		PrintWriter out = res.getWriter();
		String fname = req.getParameter("firstname");
		String mname = req.getParameter("middlename");
		String lname = req.getParameter("lastname");
		String age = req.getParameter("age");
		String email = req.getParameter("email");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		out.println(fname);
		out.println(mname);
		out.println(lname);
		out.println(age);
		out.println(email);
		out.println(username);
		out.println(password);
		out.close();
	}
	
	public void destroy() {
	}
}
