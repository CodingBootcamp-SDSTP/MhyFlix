import java.io.PrintWriter;
import java.io.IOException;
// import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;

public class FlixUser extends HttpServlet
{
	FlixDatabase fd;
	
	public void init() throws ServletException {
		FlixDatabase fd = FlixDatabase.instance();
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/xml");
		PrintWriter out = res.getWriter();
		out.println("it is working");
		out.close();
	}

	public void destroy() {
		fd = null;
	}
}
