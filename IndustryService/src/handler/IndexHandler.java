package handler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.News;
import model.Notification;
import datacontrol.NewsControl;
import datacontrol.NotificationControl;

/**
 * Servlet implementation class IndexHandler
 */
@WebServlet("/IndexHandler")
public class IndexHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexHandler() {
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
			NewsControl nc = new NewsControl();
			NotificationControl nfc = new NotificationControl();
			int rp = 5;
			List<News> newsList = nc.getListByColumn(0, rp);
			List<Notification> noticeList = nfc.getListByColumn(0, rp);
			request.setAttribute("newsList", newsList);
			request.setAttribute("noticeList", noticeList);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (Exception e) {
			
		}
	}

}
