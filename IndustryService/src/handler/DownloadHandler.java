package handler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.SoftwareControl;
import datacontrol.VideoControl;
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
			PrintWriter pw = response.getWriter();
			if (null == user) {
				pw.write("<html><script> alert('请登录后下载');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} else {
				String type = request.getParameter("type");
				String resid = request.getParameter("id");
				String link = "";
				if ("software".equals(type))
					link = (new SoftwareControl()).listSoftware("softwareid", resid).get(0).getLink();
				else if ("video".equals(type))
					link = (new VideoControl()).listVideo("videoid", resid).get(0).getLink2();
				pw.write("<html><script>location.href='"+request.getContextPath()+link+"';</script></html>");
			}
		} catch (Exception e) {
			
		}
		
	}
}
