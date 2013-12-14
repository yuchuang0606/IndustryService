package handler;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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
			request.getServletContext().log("验证用户登录："+username);
			
			UserControl uc = new UserControl();
			String info = uc.verifyUser(username, password);
			if ("不存在该用户".equals(info)) {
				request.setAttribute("tip", "用户名不存在");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return ;
			}
			else if ("false".equals(info)) {
				request.setAttribute("tip", "密码错误");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return ;
			}
			else if ("true".equals(info)) {
				User user = null;
				user = uc.listUser("username", username).get(0);

				// 先登录次数+1
				user.setLogintimes(user.getLogintimes()+1);
				HttpSession session = request.getSession(true);
				// 将用户添加到session，登录时间为上次登录时间
				session.setAttribute("user", user);
				String lastlogin = user.getLastlogin();
				// 再更新登录时间
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
				user.setLastlogin(df.format(new Date()));
				uc.updateUser(user);// 写到数据库
				user.setLastlogin(lastlogin);
				response.sendRedirect("user/user.jsp");
				return ;
			} else {
				response.sendRedirect("index.jsp");
				return ;
			}
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('验证过程出错，请联系管理员！^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
