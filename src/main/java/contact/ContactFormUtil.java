package contact;

import javax.servlet.http.HttpServletRequest;

public class ContactFormUtil {
	private ContactFormUtil() {
		
	}

static void setRequestAttributes(HttpServletRequest request) {
	String onamae = request.getParameter("onamae");
	String mailAddress = request.getParameter("mail_address");
	String sex = request.getParameter("sex");
	String[] cates = request.getParameterValues("cates");
	String pref = request.getParameter("pref");
	String message = request.getParameter("message");

	request.setAttribute("onamae", onamae);
	request.setAttribute("mail_address", mailAddress);
	request.setAttribute("sex", sex);
	request.setAttribute("cates", cates);
	request.setAttribute("pref", pref);
	request.setAttribute("message", message);
	}
}