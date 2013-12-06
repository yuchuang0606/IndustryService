package handler;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datacontrol.UserControl;
import model.User;

/**
 * Servlet implementation class RegisterHandler
 */
@WebServlet("/register")
public class RegisterHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterHandler() {
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
			String username = request.getParameter("username");
			String realname = request.getParameter("realname");
			String password = request.getParameter("pwd1");
			String email = request.getParameter("email");
			String sex = request.getParameter("sex");
			System.out.println(request.getParameter("birthday"));
			String birthday = request.getParameter("birthday");
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
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

			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setRegdate(new Date());	// set system time as register time
			user.setLastlogin(new Date());	// set system time as the first login time
			user.setEmail(email);
			user.setGender(sex);
			user.setBirthdate(df.parse(birthday));
			user.setUserpic("/image/userhead/user.png");	// set default user head picture
			user.setAddress(address);
			user.setCompany(cpname);
			user.setIndustry(industry);
			user.setDepartment(depart);
			user.setJobtitle(duty);
			user.setPhone(mobile);
			user.setPostcode(postcode);
			user.setMailaddress(postaddress);
			user.setUploadsize(10);
			user.setRealname(realname);
			user.setScale(size);
			
			UserControl uc = new UserControl();
			uc.addUser(user);
			
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);
			response.sendRedirect("./user/user.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			try {
				response.sendRedirect("./index.jsp");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
}
