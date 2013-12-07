package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.NewsControl;
import datacontrol.NotificationControl;
import datacontrol.UserControl;
import model.News;
import model.Notification;
import model.Resource;
import model.User;

/**
 * Servlet implementation class NewsDataHandler
 */
@WebServlet("/newsdata")
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
			System.out.println(command);
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
					StringBuffer sb = new StringBuffer();
					sb.append("{\"total\":" + count + ",");
					sb.append("\"page\":" + page + ",");
					sb.append("\"rows\":[");
					int i = 0;
					for (News news : newsList) {
						String author = ((new UserControl()).getUser(news.getAuthor())).getUsername();
						String createtime = new SimpleDateFormat("yyyy/MM/dd").format(news.getCreatetime());
						String modifytime = new SimpleDateFormat("yyyy/MM/dd").format(news.getModifytime());
						String []verifyState = {"未审核","已审核"};
						sb.append("{\"id\":" + news.getNewsid() + ",");
						sb.append("\"cell\":[\"" + news.getTitle() + "\",\""
								+ author + "\",\"" + createtime + "\",\""
								+ modifytime + "\",\"" + news.getAccesstime() + "\",\""
								+ verifyState[news.getIspass()] + "\"]}");
						if (i != newsList.size() - 1)
							sb.append(",");
						i++;
					}
					sb.append("]}");
					String result = new String(sb);
					response.setCharacterEncoding("utf-8");
					PrintWriter pw = response.getWriter();
					pw.write(result);
				}
				else if ("notice".equals(type))
				{
					noticeList = nfc.getListByColumn(start, rp);
					StringBuffer sb = new StringBuffer();
					sb.append("{\"total\":" + count + ",");
					sb.append("\"page\":" + page + ",");
					sb.append("\"rows\":[");
					int i = 0;
					for (Notification notice : noticeList) {
						String author = ((new UserControl()).getUser(notice.getAuthor())).getUsername();
						String createtime = new SimpleDateFormat("yyyy/MM/dd").format(notice.getCreatetime());
						String modifytime = new SimpleDateFormat("yyyy/MM/dd").format(notice.getModifytime());
						String []verifyState = {"未审核","已审核"};
						sb.append("{\"id\":" + notice.getNewsid() + ",");
						sb.append("\"cell\":[\"" + notice.getTitle() + "\",\""
								+ author + "\",\"" + createtime + "\",\""
								+ modifytime + "\",\"" + notice.getAccesstime() + "\",\""
								+ verifyState[notice.getIspass()] + "\"]}");
						if (i != noticeList.size() - 1)
							sb.append(",");
						i++;
					}
					sb.append("]}");
					String result = new String(sb);
					response.setCharacterEncoding("utf-8");
					PrintWriter pw = response.getWriter();
					pw.write(result);
				}
			} else if ("add".equals(command)) {
				//System.out.println(request.getParameter("fds8e8iewofdsnfoaoer293402432fd"));
				//String qs =  java.net.URLDecoder.decode(request.getQueryString(),"utf-8");
				//System.out.println(qs);
				//int index = qs.indexOf("fds8e8iewofdsnfoaoer293402432fd=", 0);
				//System.out.println(index);
				//String content = qs.substring(index+32, qs.length());
				//System.out.println(content);
				//System.out.println(request.getParameter("title"));
				//System.out.println(request.getParameter("type"));
				//System.out.println(request.getParameter("editor1"));
				String title = request.getParameter("title");
				String type = request.getParameter("type");
				String content = request.getParameter("editor1");
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
					response.getWriter().write("<html><script> alert('发表成功');location.href='"+request.getContextPath()+"/admin/publish.jsp"+"';</script></html>");
					return ;
				} else if ("notice".equals(type)) {
					NotificationControl nfc = new NotificationControl();
					Notification notice = new Notification();
					notice.setTitle(title);
					notice.setAccesstime(0);
					notice.setAuthor(authorid);
					notice.setContent(content);
					notice.setIspass(0);
					notice.setModifytime(new Date());
					notice.setCreatetime(new Date());
					nfc.addNotification(notice);
					response.getWriter().write("true");
					return ;
				}
			} else if ("update".equals(command)) {
				
			} else if ("delete".equals(command)) {
				String type = request.getParameter("type");
				Integer id = Integer.parseInt(request.getParameter("id"));
				if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = nc.getNewsbyId(id);
					nc.deleteNews(news);
					response.getWriter().write("true");
				}
			}
			
		} catch (Exception e) {
			
		}
	}

}
