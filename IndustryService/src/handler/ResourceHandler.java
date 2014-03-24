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
			
			ResourceControl rc = new ResourceControl();
			int count = 0;
			count = rc.getNumberByPropes("typeid", type, "ispublic", "1", "ispass", "1");
			int totalPage= count/rp;
			if (totalPage ==0)
				totalPage = 1;
			else if (count%rp != 0)
				totalPage = totalPage + 1;
			int start = (page-1)*rp;
			List<Resource> reslist = rc.getByPropAndColumnes("typeid", type, "ispublic", "1", "ispass", "1", orderby, start, rp);
			request.setAttribute("reslist", reslist);
			request.setAttribute("type", type);
			request.setAttribute("orderby", orderby);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("culPage", page);
			request.getRequestDispatcher("reslist.jsp").forward(request, response);
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('资源数据读取出错，请联系管理员！^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
