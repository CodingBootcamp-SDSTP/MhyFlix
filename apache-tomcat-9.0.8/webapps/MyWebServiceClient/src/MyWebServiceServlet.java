import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;

public class MyWebServiceServlet extends HttpServlet
{
	private ArrayList<String> dbContent;
	private StringDatabase dbData;
	
	public void init() throws ServletException {
		dbData = new StringDatabase();
		dbContent = dbData.getStrings();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		out.println("<stringList>");
		for(String text : dbContent) {
			// out.println("<string>" + dbContent.get(0) + "</string>");
			out.println("<string>" + text + "</string>");
		}
		out.println("</stringList>");
	}

	public void destroy() {
	}
}
