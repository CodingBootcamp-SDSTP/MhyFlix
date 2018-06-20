import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class FlixVideos extends HttpServlet {
	FlixDatabase fd;

	public void init() throws ServletException {
		FlixDatabase fd = FlixDatabase.instance();
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Flix User");
		res.setContentType("text/plain");
		PrintWriter out = res.getWriter();
		out.println("it is working Flix Videos");
		out.close();
	}

	public void destroy() {
		fd = null;
	}
}
