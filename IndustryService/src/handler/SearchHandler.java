package handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Resource;
import model.Video;
import datacontrol.ResourceControl;
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
			//String option = request.getParameter("option");
			String keyword = request.getParameter("keyword");
			//String type = "";
			/*if ("软件".equals(option))
				type = "software";
			else if ("视频".equals(option))
				type = "video";*/
			ResourceControl vc = new ResourceControl();
			List<Resource> resList= vc.SearchByColumn("title", keyword);
			request.setAttribute("resList", resList);
			request.getRequestDispatcher("search.jsp").forward(request, response);
		} catch (Exception e) {
			
		}
	}
}
