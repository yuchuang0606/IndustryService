package handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Software;
import model.Video;
import datacontrol.SoftwareControl;
import datacontrol.VideoControl;

/**
 * Servlet implementation class SearchHandler
 */
@WebServlet("/search")
public class SearchHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchHandler() {
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
			String option = request.getParameter("option");
			String keyword = request.getParameter("keyword");
			System.out.println(option);
			System.out.println(keyword);

			if ("ศํผþ".equals(option))
			{
				System.out.println("aaa1");
				SoftwareControl sc = new SoftwareControl();
				List<Software> softList= sc.SearchByColumn("title", keyword);
				request.setAttribute("type", "software");
				request.setAttribute("softList", softList);
				System.out.println("aaa");
			}
			else if ("สำฦต".equals(option))
			{
				VideoControl vc = new VideoControl();
				List<Video> videoList= vc.SearchByColumn("title", keyword);
				request.setAttribute("type", "video");
				request.setAttribute("videoList", videoList);
			}
			request.getRequestDispatcher("search.jsp").forward(request, response);
		} catch (Exception e) {
			
		}
	}
}
