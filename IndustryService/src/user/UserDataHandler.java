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

import org.json.JSONArray;
import org.json.JSONObject;

import model.Notification;
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
			request.setCharacterEncoding("utf-8");
			String type = request.getParameter("type");
			User user = (User)request.getSession().getAttribute("user");
			UserControl uc = new UserControl();
			if ("info".equals(type))	// update user information
			{
				String realname = request.getParameter("realname");
				String email = request.getParameter("email");
				String sex = request.getParameter("sex");
				String birthday = request.getParameter("birthday");
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
				if (birthday == null || "".equals(birthday))
					birthday = df.format(new Date());	// new Date()为获取当前系统时间
				String address = request.getParameter("address");
				String cpname = request.getParameter("cpname");
				String industry = request.getParameter("industry");
				String size = request.getParameter("size");
				String depart = request.getParameter("depart");
				String duty = request.getParameter("duty");
				String mobile = request.getParameter("mobile");
				String postcode = request.getParameter("postcode");
				String postaddress = request.getParameter("postaddress");
				String introduction = request.getParameter("introduction");
				user.setRealname(realname);
				user.setEmail(email);
				user.setGender(sex);
				user.setBirthdate(birthday);
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
				if (user.getUsergroup() != 1) {	// only administrator can call this function
					response.getWriter().write("<html><script> alert('没有权限调用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
					return ;
				}
				int id = Integer.parseInt(request.getParameter("id"));
				User u = uc.getUser(id);
				if (u.getUsergroup() == 1) {
					response.getWriter().write("reject");
					return ;
				}
				u.setUsergroup(4);
				uc.updateUser(u);
				response.getWriter().write("true");
			} else if ("jsonlist".equals(type)) {
				if (user.getUsergroup() != 1) {// only administrator can call this function
					response.getWriter().write("<html><script> alert('没有权限调用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
					return ;
				}
				Integer page = Integer.parseInt(request.getParameter("page"));
				Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the  size of a page
				int count = uc.getUserNumber();
				int start = (page - 1) * rp;
				List<User> userList = uc.getListByColumn(start, rp);
				JSONObject joo = new JSONObject();
		        JSONArray jao = new JSONArray();
		        for (User u : userList) {
					String regtime = u.getRegdate();
					String lastlogin = u.getLastlogin();
					String birthday = u.getBirthdate();
					String []groupState = {"管理员组","新闻管理组","未激活组","普通用户组"};
					JSONObject joi = new JSONObject();
					joi.put("id", u.getUserid());
					JSONArray jai = new JSONArray();
					jai.put(u.getUsername()).put(groupState[u.getUsergroup()-1])
					.put(u.getCoin()).put(u.getUploadsize())
					.put(u.getDownloadfilenumber()).put(u.getUploadfilenumber())
					.put(lastlogin).put(u.getLogintimes()).put(regtime)
					.put(u.getEmail()).put(u.getPhone()).put(u.getCompany())
					.put(u.getDepartment()).put(u.getJobtitle())
					.put(u.getAddress()).put(u.getMailaddress()).put(u.getPostcode())
					.put(u.getRealname()).put(birthday).put(u.getGender());
					joi.put("cell", jai);
					jao.put(joi);
		        }
		        joo.put("rows", jao);
		        joo.put("page", page);
		        joo.put("total", count);
		        response.setCharacterEncoding("utf-8");
		        response.getWriter().write(joo.toString());
			} else if ("delete".equals(type)) {	// 删除用户
				if (user.getUsergroup() != 1) {// only administrator can call this function
					response.getWriter().write("<html><script> alert('没有权限调用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
					return ;
				}
				int id = Integer.parseInt(request.getParameter("id"));
				User u = uc.getUser(id);
				if (u.getUsergroup() == 1) {	// 管理员不能被删除
					response.getWriter().write("reject");
					return ;
				}
				uc.deleteUser(u);
				response.getWriter().write("true");
			} else {
				response.getWriter().write("false");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
