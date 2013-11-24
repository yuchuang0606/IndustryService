package handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import datacontrol.UserControl;

/**
 * Servlet implementation class AuthorityHandler
 */
@WebServlet("/auth")
public class AuthHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthHandler() {
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
			String username = request.getParameter("un");
			String password = request.getParameter("pwd");
			
			UserControl uc = new UserControl();
			String info = uc.verifyUser(username, password);
			if ("不存在该用户".equals(info)) {
				System.out.println("用户不存在");
				request.setAttribute("tip", "用户名不存在");
				request.getRequestDispatcher("./index.jsp").forward(request, response);
			}
			else if ("false".equals(info)) {
				System.out.println("密码错误");
				request.setAttribute("tip", "密码错误");
				request.getRequestDispatcher("./index.jsp").forward(request, response);
			}
			else if ("true".equals(info)) {
				User user = null;
				user = uc.listUser("username", username).get(0);
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				request.getRequestDispatcher("userinfo.jsp").forward(request, response);
			} else {
				response.sendRedirect("./index.jsp");
			}
		} catch (Exception e) {
			
		}
	}

}
