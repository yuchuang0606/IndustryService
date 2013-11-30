package handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

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
@WebServlet("/update")
public class UpdateHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHandler() {
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
			Integer userid = Integer.parseInt(request.getParameter("userid"));
			PrintWriter pw = response.getWriter();
			
			UserControl uc = new UserControl();
			User user = uc.getUser(userid);
			if ("info".equals(type))	// update user information
			{
				String realname = new String(request.getParameter("realname").getBytes("iso8859-1"),"utf-8");
				String email = new String(request.getParameter("email").getBytes("iso8859-1"),"utf-8");
				String sex = new String(request.getParameter("sex").getBytes("iso8859-1"),"utf-8");
				String birthday = new String(request.getParameter("birthday").getBytes("iso8859-1"),"utf-8");
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
				
				user.setEmail(email);
				user.setGender(sex);
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				user.setBirthdate(df.parse(birthday));
				user.setAddress(address);
				user.setCompany(cpname);
				user.setIndustry(industry);
				user.setDepartment(depart);
				user.setJobtitle(duty);
				user.setPhone(mobile);
				user.setPostcode(postcode);
				user.setMailaddress(postaddress);
				user.setIntroduction(introduction);
				
				// update the user
				uc.updateUser(user);
				pw.write("true");
			} else if ("pwd".equals(type)) {	// update user password
				String oldpwd = new String(request.getParameter("oldpwd").getBytes("iso8859-1"),"utf-8");
				String newpwd = new String(request.getParameter("newpwd").getBytes("iso8859-1"),"utf-8");
				if (UserControl.MD5(oldpwd).equals(user.getPassword()))
				{
					user.setPassword(UserControl.MD5(newpwd));
					uc.updateUser(user);
					pw.write("true");
				} else {
					pw.write("false");
				}
			} else if ("headpic".equals(type)) {	// update user head picture
				String userpic = new String(request.getParameter("userpic").getBytes("iso8859-1"),"utf-8");
				user.setUserpic(userpic);
				uc.updateUser(user);
				pw.write("true");
			} else {
				pw.write("false");
			}
		} catch (Exception e) {
		}
	}

}
