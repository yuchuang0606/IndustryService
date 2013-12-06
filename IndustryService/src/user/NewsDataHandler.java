package user;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.NewsControl;
import datacontrol.NotificationControl;
import model.News;
import model.Notification;
import model.User;

/**
 * Servlet implementation class NewsDataHandler
 */
@WebServlet("/user/newsdata")
public class NewsDataHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsDataHandler() {
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
			String command = request.getParameter("command");
			if ("jsonlist".equals(command)) {
				String type = request.getParameter("type");
				Integer page = Integer.parseInt(request.getParameter("page"));
				Integer rp = Integer.parseInt(request.getParameter("rp"));
				NewsControl nc = new NewsControl();
				NotificationControl nfc = new NotificationControl();
				int count = 0;
				if ("news".equals(type))
					count = nc.getNewsNumber();
				else if ("notice".equals(type))
					count = nfc.getNotificationNumber();
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
					newsList = nc.getListByColumn(start, rp);
					request.setAttribute("newsList", newsList);
				}
				else if ("notice".equals(type))
				{
					noticeList = nfc.getListByColumn(start, rp);
					request.setAttribute("noticeList", noticeList);
				}
			} else if ("add".equals(command)) {
				String title = request.getParameter("title");
				String type = request.getParameter("type");
				String content = request.getParameter("content");
				int authorid = user.getUserid();
				if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = new News();
					news.setTitle(title);
					news.setAccesstime(0);
					news.setAuthor(authorid);
					news.setContent(content);
					news.setIspass(0);
					news.setModifytime(new Date());
					news.setCreatetime(new Date());
					nc.addNews(news);
					response.getWriter().write("true");
					return ;
				} else if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = new News();
					news.setTitle(title);
					news.setAccesstime(0);
					news.setAuthor(authorid);
					news.setContent(content);
					news.setIspass(0);
					news.setModifytime(new Date());
					news.setCreatetime(new Date());
					nc.addNews(news);
					response.getWriter().write("true");
					return ;
				}
				
			} else if ("update".equals(command)) {
				
			} else if ("delete".equals(command)) {
				
			}
			
		} catch (Exception e) {
			
		}
	}

}
