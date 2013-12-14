package handler;

import datacontrol.*;
import model.*;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewsHandler
 */
@WebServlet("/news")
public class NewsHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsHandler() {
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
			int page = Integer.parseInt(request.getParameter("page"));
			int rp = Integer.parseInt(request.getParameter("rp"));
			
			NewsControl nc = new NewsControl();
			NotificationControl nfc = new NotificationControl();
			int count = 0;
			if ("news".equals(type))
				count = nc.getNumberByProp("ispass", "1");
			else if ("notice".equals(type))
				count = nfc.getNumberByProp("ispass", "1");
			// calculate the number of pages
			int totalPage= count/rp;
			if (totalPage ==0)
				totalPage = 1;
			else if (count%rp != 0)
				totalPage = totalPage + 1;
			int start = (page-1)*rp;
			List<News> newsList = null;
			List<Notification> noticeList = null;
			if ("news".equals(type))
			{
				newsList = nc.getByPropAndColumn("ispass", "1", "modifytime", start, rp);
				request.setAttribute("newsList", newsList);
			}
			else if ("notice".equals(type))
			{
				noticeList = nfc.getByPropAndColumn("ispass", "1", "modifytime", start, rp);
				request.setAttribute("noticeList", noticeList);
			}
			request.setAttribute("type", type);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("culPage", page);
			request.getRequestDispatcher("newslist.jsp").forward(request, response);
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('新闻读取出错，请联系管理员！^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
}