package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import model.User;

import org.json.*;

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
			if (user.getUsergroup() != 1) {	// 此页面的所有功能只有管理员能调用
				response.getWriter().write("<html><script> alert('没有权限调用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			}
			request.getServletContext().log(user.getUsername() +  " call " + command +  "in news data");
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
					JSONObject joo = new JSONObject();
			        JSONArray jao = new JSONArray();
			        for (News news : newsList) {
			        	String author = ((new UserControl()).getUser(news.getAuthor())).getUsername();
						String createtime = new SimpleDateFormat("yyyy/MM/dd").format(news.getCreatetime());
						String modifytime = new SimpleDateFormat("yyyy/MM/dd").format(news.getModifytime());
						String []verifyState = {"未审核","已审核"};
						JSONObject joi = new JSONObject();
						joi.put("id", news.getNewsid());
						JSONArray jai = new JSONArray();
						jai.put("<a href=\"../newsinfo.jsp?type=news&newsid="+news.getNewsid()+"\" target=\"_blank\" title=\""+news.getTitle() + "\">" + news.getTitle() + "</a>")
							.put(author).put(createtime)
							.put(modifytime).put(news.getAccesstime()).put(verifyState[news.getIspass()]);
						joi.put("cell", jai);
						jao.put(joi);
			        }
			        joo.put("rows", jao);
			        joo.put("page", page);
			        joo.put("total", count);
			        response.setCharacterEncoding("utf-8");
			        response.getWriter().write(joo.toString());
				}
				else if ("notice".equals(type))
				{
					noticeList = nfc.getListByColumn(start, rp);
			        JSONObject joo = new JSONObject();
			        JSONArray jao = new JSONArray();
			        for (Notification notice : noticeList) {
			        	String author = ((new UserControl()).getUser(notice.getAuthor())).getUsername();
						String createtime = new SimpleDateFormat("yyyy/MM/dd").format(notice.getCreatetime());
						String modifytime = new SimpleDateFormat("yyyy/MM/dd").format(notice.getModifytime());
						String []verifyState = {"未审核","已审核"};
						JSONObject joi = new JSONObject();
						joi.put("id", notice.getNewsid());
						JSONArray jai = new JSONArray();
						jai.put("<a href=\"../newsinfo.jsp?type=notice&newsid="+notice.getNewsid()+"\" target=\"_blank\" title=\""+notice.getTitle() + "\">" + notice.getTitle() + "</a>")
						.put(author).put(createtime).put(modifytime).put(notice.getAccesstime())
						.put(verifyState[notice.getIspass()]);
						joi.put("cell", jai);
						jao.put(joi);
			        }
			        joo.put("rows", jao);
			        joo.put("page", page);
			        joo.put("total", count);
			        response.setCharacterEncoding("utf-8");
			        response.getWriter().write(joo.toString());
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
				String type = request.getParameter("type");
				Integer id = Integer.parseInt(request.getParameter("id"));
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = nc.getNewsbyId(id);
					news.setTitle(title);
					news.setContent(content);
					nc.updateNews(news);
					response.getWriter().write("true");
				} else if ("notice".equals(type)) {
					NotificationControl nfc = new NotificationControl();
					Notification notice = nfc.getNotificationbyId(id);
					notice.setTitle(title);
					notice.setContent(content);
					response.getWriter().write("true");
				}
			} else if ("delete".equals(command)) {
				String type = request.getParameter("type");
				Integer id = Integer.parseInt(request.getParameter("id"));
				if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = nc.getNewsbyId(id);
					nc.deleteNews(news);
					response.getWriter().write("true");
				} else if ("notice".equals(type)) {
					NotificationControl nfc = new NotificationControl();
					Notification notice = nfc.getNotificationbyId(id);
					nfc.deleteNotification(notice);
					response.getWriter().write("true");
				}
			} else if ("get".equals(command)) {
				String type = request.getParameter("type");
				Integer id = Integer.parseInt(request.getParameter("id"));
				if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = nc.getNewsbyId(id);
					JSONObject obj = new JSONObject();
					obj.put("id", news.getNewsid());
					obj.put("title", news.getTitle());
					obj.put("content", news.getContent());
					//array.put(obj);
					response.setCharacterEncoding("utf-8");
					response.getWriter().write(obj.toString());
				} else if ("notice".equals(type)) {
					NotificationControl nfc = new NotificationControl();
					Notification notice = nfc.getNotificationbyId(id);
					JSONObject obj = new JSONObject();
					obj.put("id", notice.getNewsid());
					obj.put("title", notice.getTitle());
					obj.put("content", notice.getContent());
					//array.put(obj);
					response.setCharacterEncoding("utf-8");
					response.getWriter().write(obj.toString());
				}
			} else if ("verify".equals(command)) {
				String type = request.getParameter("type");
				Integer id = Integer.parseInt(request.getParameter("id"));
				if ("news".equals(type)) {
					NewsControl nc = new NewsControl();
					News news = nc.getNewsbyId(id);
					news.setIspass(1);
					nc.updateNews(news);
					response.getWriter().write("true");
				} else if ("notice".equals(type)) {
					NotificationControl nfc = new NotificationControl();
					Notification notice = nfc.getNotificationbyId(id);
					notice.setIspass(1);
					nfc.updateNotification(notice);
					response.getWriter().write("true");
				}
			}
			
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('用户新闻数据操作出错，请联系管理员！^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
