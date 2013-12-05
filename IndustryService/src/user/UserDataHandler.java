package handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import datacontrol.UserControl;

/**
 * Servlet implementation class UserDataHandler
 */
@WebServlet("/userdata")
public class UserDataHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserDataHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	private void process(HttpServletRequest request,
			HttpServletResponse response) {
		
		try {
			String type = request.getParameter("type");
			
			
			
			Integer page = Integer.parseInt(request.getParameter("page"));
			Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the
																		// size of a
																		// page
	
			
			
			if ("list".equals(type)) {
				UserControl uc = new UserControl();
				PrintWriter pw = response.getWriter();
				int userTotal = uc.getUserNumber();
				int start = (page - 1) * rp;
				List<User> userList = uc.getListByColumn(start, rp);
				StringBuffer sb = new StringBuffer();
				sb.append("{\"total\":" + userTotal + ",");
				sb.append("\"page\":" + page + ",");
				sb.append("\"rows\":[");
				int i = 0;
				for (User user : userList) {
					sb.append("{\"id\":" + user.getUserid() + ",");
					sb.append("\"cell\":[" + "\"" + user.getUserid() + "\","
							+ "\"" +  user.getUsername() + "\","
							+ "\"" +  user.getUsergroup() + "\","
							+ "\"" + user.getEmail() + "\","
							+ "\"" + user.getPhone() + "\","
							+ "\"" + user.getCompany() + "\"]}");
					if (i != userList.size() - 1)
						sb.append(",");
					i++;
				}
				sb.append("]}");
				String result = new String(sb);
				
				pw.write(result);
			} else if ("update".equals(type)) {	// 修改用户信息
				int id = Integer.parseInt(request.getParameter("id"));
				
				String username = request.getParameter("username");
                int group = Integer.parseInt(request.getParameter("group")); 
                String email = request.getParameter("email");
                String phoneNum = request.getParameter("phoneNum");
                String company = request.getParameter("company");
				User u = new User();
				UserControl uc = new UserControl();
				PrintWriter pw = response.getWriter();
				u.setUserid(id);
				u.setUsername(username);
				u.setUsergroup(group);
				u.setEmail(email);
				u.setPhone(phoneNum);
				u.setCompany(company);
				uc.updateUser(u);
				pw.write("true");   
			} else if ("delete".equals(type)) {	// 删除用户
				int id = Integer.parseInt(request.getParameter("id"));
				User u = new User();
				UserControl uc = new UserControl();
				PrintWriter pw = response.getWriter();
				u.setUserid(id);
				uc.deleteUser(u);
				pw.write("true");
			}
		} catch (Exception e) {
			
		}
		
	}
}
