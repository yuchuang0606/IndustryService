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
			//request.setCharacterEncoding("utf-8");
			String type = request.getParameter("type");
			User user = (User)request.getSession().getAttribute("user");
			UserControl uc = new UserControl();
			System.out.println(type);
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
				Integer page = Integer.parseInt(request.getParameter("page"));
				Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the  size of a page
				int count = uc.getUserNumber();
				int start = (page - 1) * rp;
				List<User> userList = uc.getListByColumn(start, rp);
				JSONObject joo = new JSONObject();
		        JSONArray jao = new JSONArray();
		        for (User u : userList) {
					String regtime = new SimpleDateFormat("yyyy/MM/dd").format(u.getRegdate());
					String lastlogin = new SimpleDateFormat("yyyy/MM/dd").format(u.getLastlogin());
					String birthday = new SimpleDateFormat("yyyy/MM/dd").format(u.getBirthdate());
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
			} else if ("update".equals(type)) {	// 修改用户信息
				int id = Integer.parseInt(request.getParameter("id"));
				String username = request.getParameter("username");
                int group = Integer.parseInt(request.getParameter("group")); 
                String email = request.getParameter("email");
                String phoneNum = request.getParameter("phoneNum");
                String company = request.getParameter("company");
				User u = new User();
				u.setUserid(id);
				u.setUsername(username);
				u.setUsergroup(group);
				u.setEmail(email);
				u.setPhone(phoneNum);
				u.setCompany(company);
				uc.updateUser(u);
				response.getWriter().write("true");   
			} else if ("delete".equals(type)) {	// 删除用户
				int id = Integer.parseInt(request.getParameter("id"));
				User u = uc.getUser(id);
				if (u.getUsergroup() == 1) {
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
