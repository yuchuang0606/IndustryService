package handler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import datacontrol.UserControl;

/**
 * Servlet implementation class ActiveUserHandler
 */
@WebServlet("/activeuser")
public class ActiveUserHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActiveUserHandler() {
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
			String token = request.getParameter("token");
			List<User> userList = new UserControl().listUser("username", username);
			request.getServletContext().log(username + " call active");
			
			if (username == null || token == null) {
				response.getWriter().write("<html><script> alert('无效的激活链接，将为您跳转到首页');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			}
			if (userList.size() == 0) {
				response.getWriter().write("<html><script> alert('用户不存在，将为您跳转到首页');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			}
			User user = userList.get(0);
			// 获取激活邮件发出的时间
			Date activetime = user.getActivetime();
			// 获取当前时间
			Date now = new Date();
			// 计算时间间隔
			long interval = now.getTime() - activetime.getTime();
			if (interval / (1000*60*60) >2) {	// 激活时间设置为2小时
				response.getWriter().write("<html><script> alert('该链接已过期，请重新激活');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			} else if (token.equals(user.getActivetoken())) {
				UserControl uc = new UserControl();
				if (user.getUsergroup() == 3)
					user.setUsergroup(4);
				uc.updateUser(user);
				response.getWriter().write("<html><script> alert('账号激活成功');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			} else {
				response.getWriter().write("<html><script> alert('激活token无效，将为您跳转到首页');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			}
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('激活过程出错，请联系管理员');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
