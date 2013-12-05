package handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.ResourceControl;
import model.Resource;

/**
 * Servlet implementation class ResourceHandler
 */
@WebServlet("/resource")
public class ResourceHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResourceHandler() {
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
			String type = request.getParameter("type");
			String orderby = request.getParameter("orderby");
			int page = Integer.parseInt(request.getParameter("page"));
			int rp = Integer.parseInt(request.getParameter("rp"));
			
			//SoftwareControl sc = new SoftwareControl();
			//VideoControl vc = new VideoControl();
			ResourceControl rc = new ResourceControl();
			int count = 0;
			count = rc.getNumberByProp("restype", type);
			int totalPage= count/rp;
			if (totalPage ==0)
				totalPage = 1;
			else if (count%rp != 0)
				totalPage = totalPage + 1;
			int start = (page-1)*rp;
			//List<Software> softList = null;
			//List<Video> videoList = null;
			List<Resource> reslist = rc.getByPropAndColumn("restype", type, "createtime", start, rp);
			request.setAttribute("reslist", reslist);
			/*
			if ("software".equals(type))
			{
				softList = sc.getListByColumn(start, rp, orderby);
				request.setAttribute("softList", softList);
			}
			else if ("video".equals(type))
			{
				videoList = vc.getListByColumn(start, rp, orderby);
				request.setAttribute("videoList", videoList);
			}*/
			request.setAttribute("type", type);
			request.setAttribute("orderby", orderby);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("culPage", page);
			request.getRequestDispatcher("reslist.jsp").forward(request, response);
		} catch (Exception e) {
			
		}
	}

}
