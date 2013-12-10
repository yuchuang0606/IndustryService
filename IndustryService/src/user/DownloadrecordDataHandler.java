package user;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import datacontrol.DownloadrecordControl;
import datacontrol.ResourceControl;
import datacontrol.UserControl;
import model.Downloadrecord;
import model.Resource;
import model.User;

/**
 * Servlet implementation class DownloadrecordDataHandler
 */
@WebServlet("/user/dlrecorddata")
public class DownloadrecordDataHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadrecordDataHandler() {
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
			if ("jsonlist".equals(command)) {	// only administrator can call this function
				if (user.getUsergroup() != 1) {
					response.getWriter().write("<html><script> alert('没有权限调用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
					return ;
				}
				int page = Integer.parseInt(request.getParameter("page"));
				int rp = Integer.parseInt(request.getParameter("rp"));
				DownloadrecordControl drc = new DownloadrecordControl();
				int count = drc.getDownloadrecordNumber();
				int totalPage= count/rp;
				if (totalPage ==0)
					totalPage = 1;
				else if (count%rp != 0)
					totalPage = totalPage + 1;
				int start = (page-1)*rp;
				List<Downloadrecord> dlrList = drc.getListByColumn(start, rp, "downloadtime");
				HashMap<String,String> typemap = new HashMap<String,String>();
				typemap.put("software", "软件");
				typemap.put("model", "模型");
				typemap.put("doc", "文档");
				typemap.put("video", "视频");
				JSONObject joo = new JSONObject();
		        JSONArray jao = new JSONArray();
		        for (Downloadrecord dlr : dlrList) {
		        	String username = ((new UserControl()).getUser(dlr.getUserid())).getUsername();
		        	Resource res = (new ResourceControl()).getResourcebyId(dlr.getResourceid());
		        	String restitle = res.getTitle();
					String downloadtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dlr.getDownloadtime());
					JSONObject joi = new JSONObject();
					joi.put("id", dlr.getRecordid());
					JSONArray jai = new JSONArray();
					jai.put(username)
						.put(restitle).put(typemap.get(res.getRestype())).put(downloadtime);
					joi.put("cell", jai);
					jao.put(joi);
		        }
		        joo.put("rows", jao);
		        joo.put("page", page);
		        joo.put("total", count);
		        response.setCharacterEncoding("utf-8");
		        response.getWriter().write(joo.toString());
			} else if ("delete".equals(command)) {
				Integer id = Integer.parseInt(request.getParameter("id"));
				DownloadrecordControl drc = new DownloadrecordControl();
				Downloadrecord dlr = drc.getDownloadrecordbyId(id);
				if (user.getUsergroup() != 1) {	// 非管理员只能删除与自己相关的记录
					if (user.getUserid() != dlr.getUserid()) {
						response.getWriter().write("<html><script> alert('没有权限使用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
						return ;
					}
				}
				drc.deleteDownloadrecord(dlr);
				response.getWriter().write("true");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
