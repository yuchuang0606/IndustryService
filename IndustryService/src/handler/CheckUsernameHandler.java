package handler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.UserControl;

/**
 * Servlet implementation class CheckUsernameHandler
 */
@WebServlet("/ckname")
public class CheckUsernameHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUsernameHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request,response);
			
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			String username = request.getParameter("username");
			request.getServletContext().log("检查用户名："+username);
			PrintWriter pw = response.getWriter();
			UserControl uc = new UserControl();
			if (uc.listUser("username", username).size() != 0)
				pw.write("true");
			else
				pw.write("false");
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('检查用户名出错，请联系管理员^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
}
