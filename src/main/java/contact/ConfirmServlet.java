package contact;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contact/confirm")
public class ConfirmServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	
    	setRequestAttributes(request);
    	
        request.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp")
               .forward(request, response);
    }
    private static void setRequestAttributes(HttpServletRequest request) {
	    String onamae = request.getParameter("onamae");
	    String mailAddress = request.getParameter("mail_address");
	    String sex = request.getParameter("sex");
	    String [] cates = request.getParameterValues("cates");
	    String pref = request.getParameter("pref");
	    String message =request.getParameter("message");
	
	    request.setAttribute("onamae", onamae);
	    request.setAttribute("mail_address", mailAddress);
	    request.setAttribute("sex", sex);
	    request.setAttribute("cates", cates);
	    request.setAttribute("pref", pref);
	    request.setAttribute("message", message);
	}
}
