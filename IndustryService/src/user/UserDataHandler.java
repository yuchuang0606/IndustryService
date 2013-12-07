package user;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
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
 * Servlet implementation class UpdateHandler
 */
@WebServlet("/user/userdata")
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
			//request.setCharacterEncoding("utf-8");
			String type = request.getParameter("type");
			User user = (User)request.getSession().getAttribute("user");
			UserControl uc = new UserControl();
			if ("info".equals(type))	// update user information
			{
				String realname = new String(request.getParameter("realname").getBytes("iso8859-1"),"utf-8");
				String email = new String(request.getParameter("email").getBytes("iso8859-1"),"utf-8");
				String sex = new String(request.getParameter("sex").getBytes("iso8859-1"),"utf-8");
				String birthday = request.getParameter("birthday");
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
				if (birthday == null || "".equals(birthday))
					birthday = df.format(new Date());	// new Date()为获取当前系统时间
				String address = new String(request.getParameter("address").getBytes("iso8859-1"),"utf-8");
				String cpname = new String(request.getParameter("cpname").getBytes("iso8859-1"),"utf-8");
				String industry = new String(request.getParameter("industry").getBytes("iso8859-1"),"utf-8");
				String size = new String(request.getParameter("size").getBytes("iso8859-1"),"utf-8");
				String depart = new String(request.getParameter("depart").getBytes("iso8859-1"),"utf-8");
				String duty = new String(request.getParameter("duty").getBytes("iso8859-1"),"utf-8");
				String mobile = new String(request.getParameter("mobile").getBytes("iso8859-1"),"utf-8");
				String postcode = new String(request.getParameter("postcode").getBytes("iso8859-1"),"utf-8");
				String postaddress = new String(request.getParameter("postaddress").getBytes("iso8859-1"),"utf-8");
				String introduction = new String(request.getParameter("introduction").getBytes("iso8859-1"),"utf-8");
				user.setRealname(realname);
				user.setEmail(email);
				user.setGender(sex);
				user.setBirthdate(df.parse(birthday));
				user.setAddress(address);
				user.setCompany(cpname);
				user.setIndustry(industry);
				user.setScale(size);
				user.setDepartment(depart);
				user.setJobtitle(duty);
				user.setPhone(mobile);
				user.setPostcode(postcode);
				user.setMailaddress(postaddress);
				user.setIntroduction(introduction);
				// update the user
				uc.updateUser(user);
				response.getWriter().write("true");
				return ;
			} else if ("pwd".equals(type)) {	// update user password
				String oldpwd = new String(request.getParameter("oldpwd").getBytes("iso8859-1"),"utf-8");
				String newpwd = new String(request.getParameter("newpwd").getBytes("iso8859-1"),"utf-8");
				if (UserControl.MD5(oldpwd).equals(user.getPassword()))
				{
					user.setPassword(UserControl.MD5(newpwd));
					uc.updateUser(user);
					response.getWriter().write("true");
				} else {
					response.getWriter().write("false");
				}
			} else if ("headpic".equals(type)) {	// update user head picture
				String userpic = new String(request.getParameter("userpic").getBytes("iso8859-1"),"utf-8");
				user.setUserpic(userpic);
				uc.updateUser(user);
				response.getWriter().write("true");
			} else if ("active".equals(type)) {
				
			} else if ("jsonlist".equals(type)) {
				Integer page = Integer.parseInt(request.getParameter("page"));
				Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the  size of a page
				
				PrintWriter pw = response.getWriter();
				int userTotal = uc.getUserNumber();
				int start = (page - 1) * rp;
				List<User> userList = uc.getListByColumn(start, rp);
				StringBuffer sb = new StringBuffer();
				sb.append("{\"total\":" + userTotal + ",");
				sb.append("\"page\":" + page + ",");
				sb.append("\"rows\":[");
				int i = 0;
				for (User u : userList) {
					sb.append("{\"id\":" + u.getUserid() + ",");
					sb.append("\"cell\":[" + "\"" + u.getUserid() + "\","
							+ "\"" +  u.getUsername() + "\","
							+ "\"" +  u.getUsergroup() + "\","
							+ "\"" + u.getEmail() + "\","
							+ "\"" + u.getPhone() + "\","
							+ "\"" + u.getCompany() + "\"]}");
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
				PrintWriter pw = response.getWriter();
				u.setUserid(id);
				uc.deleteUser(u);
				pw.write("true");
			} else {
				response.getWriter().write("false");
			}
		} catch (Exception e) {
			
		}
	}

}
