package handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.DownloadrecordControl;
import datacontrol.ResourceControl;
import datacontrol.UserControl;
import model.Downloadrecord;
import model.User;

/**
 * Servlet implementation class DownloadHandler
 */
@WebServlet("/download")
public class DownloadHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadHandler() {
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
			User user = (User)request.getSession().getAttribute("user");
			if (null == user) {
				response.getWriter().write("<html><script> alert('请登录后下载');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} else {
				request.getServletContext().log(user.getUsername()+"下载资源id:" + request.getParameter("id"));
				String resid = request.getParameter("id");
				String link = "";
				link = (new ResourceControl()).listResource("resourceid", resid).get(0).getLink();
				DownloadrecordControl drc = new DownloadrecordControl();
				Downloadrecord dr = new Downloadrecord();
				// 添加下载记录
				dr.setUserid(user.getUserid());
				dr.setResourceid(Integer.parseInt(resid));
				dr.setDownloadtime(new Date());
				drc.addDownloadrecord(dr);
				// 用户下载数量+1
				user.setDownloadfilenumber(user.getDownloadfilenumber()+1);
				new UserControl().updateUser(user);
				response.getWriter().write("<html><script>location.href='"+request.getContextPath()+link+"';</script></html>");
			}
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('下载记录出错，请联系管理员^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		
	}
}
