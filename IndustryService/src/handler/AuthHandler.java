package handler;

import java.io.IOException;
import java.util.Date;

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
			if ("�����ڸ��û�".equals(info)) {
				System.out.println("�û�������");
				request.setAttribute("tip", "�û���������");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else if ("false".equals(info)) {
				System.out.println("�������");
				request.setAttribute("tip", "�������");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else if ("true".equals(info)) {
				User user = null;
				user = uc.listUser("username", username).get(0);
				user.setLastlogin(uc.getLastLogintime(user.getUserid()));
				// ��¼����+1
				uc.addLoginTimes(user.getUserid());
				HttpSession session = request.getSession(true);
				// ���µ����µĵ�¼ʱ��
				//user.setLastlogin(new Date());
				//uc.updateUser(user);
				// ��ӵ�session
				session.setAttribute("user", user);
				response.sendRedirect("user/user.jsp");
			} else {
				response.sendRedirect("index.jsp");
			}
		} catch (Exception e) {
			
		}
	}

}
