package advanced.java.program;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Dashboard")
public class Dashboard extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public Dashboard() {
		super();
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		PrintWriter out = res.getWriter();
		out.println("<html><body>");
		HttpSession session = req.getSession();
		String userId = null;
		if(session.getAttribute("userid") != null){
			userId = (String)session.getAttribute("userid");
		}
		if(userId == null) {
			out.println("No user was found inthe session.<br>");
		}else {
			out.println("UserId obtained from session : "+userId+"<br>");
			out.println("<a href='logout'>Logout of session</a><br>" );
		}
		out.println("</body></html>");
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		doGet(req, res);
	}

}
