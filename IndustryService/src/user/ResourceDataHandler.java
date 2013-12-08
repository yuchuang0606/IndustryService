package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import datacontrol.ResourceControl;
import datacontrol.UserControl;
import datacontrol.VideoControl;
import model.Notification;
import model.Resource;
import model.User;
import model.Video;

/**
 * Servlet implementation class ResourceAdminHandler
 */
@WebServlet("/user/resourcedata")
public class ResourceDataHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResourceDataHandler() {
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
			if ("list".equals(command)) {
				String type = request.getParameter("type");
				String orderby = request.getParameter("orderby");
				int page = Integer.parseInt(request.getParameter("page"));
				int rp = Integer.parseInt(request.getParameter("rp"));
				ResourceControl rc = new ResourceControl();
				int count = rc.getNumberByProps("authorid", String.valueOf(user.getUserid()), "restype", type);
				int totalPage= count/rp;
				if (totalPage ==0)
					totalPage = 1;
				else if (count%rp != 0)
					totalPage = totalPage + 1;
				int start = (page-1)*rp;
				List<Resource> ureslist = rc.getByPropAndColumns("authorid", String.valueOf(user.getUserid()), "restype", type, orderby, start, rp);
				request.setAttribute("userlist", ureslist);
				request.setAttribute("type", type);
				request.setAttribute("orderby", orderby);
				request.setAttribute("totalPage", totalPage);
				request.setAttribute("culPage", page);
				request.getRequestDispatcher("myupload.jsp").forward(request, response);
			} else if ("add".equals(command)) {
				/*
				System.out.println("-1");
				System.out.println(request.getParameter("restype"));
				System.out.println(request.getParameter("ispublic"));
				System.out.println(request.getParameter("ressize"));
				System.out.println(request.getParameter("rescoin"));
				System.out.println(request.getParameter("resname"));
				System.out.println(request.getParameter("description"));
				System.out.println(request.getParameter("filepath"));
				System.out.println(request.getParameter("restype"));
				System.out.println(request.getParameter("respic"));
				System.out.println(request.getParameter("videolink"));*/
				String restype = request.getParameter("restype");
				Integer ispublic = Integer.parseInt(request.getParameter("ispublic"));
				Double ressize = Double.parseDouble(request.getParameter("ressize"));
				Integer rescoin = Integer.parseInt(request.getParameter("rescoin"));
				String resname = new String(request.getParameter("resname").getBytes("iso8859-1"),"utf-8");
				String restag = new String(request.getParameter("restag").getBytes("iso8859-1"),"utf-8");
				String description = new String(request.getParameter("description").getBytes("iso8859-1"),"utf-8");;
				String respic = request.getParameter("respic");
				String filename = new String(request.getParameter("filename").getBytes("iso8859-1"),"utf-8");;
				String path = request.getParameter("filepath");
				String videolink = new String(request.getParameter("videolink").getBytes("iso8859-1"),"utf-8");;
				
				DecimalFormat format = new DecimalFormat("#0.0");
				double size = Double.parseDouble(format.format(ressize));
				if (size > user.getUploadsize()) {	// 超过用户上传大小限制
					response.getWriter().write("big");
					return ;
				}
				
				ResourceControl rc = new ResourceControl();
				Resource res = new Resource();
				res.setAuthorid(user.getUserid());
				res.setCreatetime(new Date());
				res.setDownloadtimes(0);
				res.setCoin(rescoin);
				res.setIspass(0);
				res.setIspublic(ispublic);
				res.setLink(path);
				res.setFilename(filename);
				res.setSdescribe(description);
				res.setOnlinelink(videolink);
				res.setSize(size);
				res.setRespic(respic);
				res.setRestype(restype);
				res.setTag(restag);
				res.setTitle(resname);
				res.setViewtimes(0);
				
				rc.addResource(res);
				response.getWriter().write("true");
				return ;
			} else if ("jsonlist".equals(command)) {
				String type = request.getParameter("type");
				Integer page = Integer.parseInt(request.getParameter("page"));
				Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the size of a page
				ResourceControl rc = new ResourceControl();
				int count = rc.getNumberByProp("restype", type);
				int start = (page - 1) * rp;
				List<Resource> resList = rc.getByPropAndColumn("restype", type, "createtime", start, rp);
				String []verifyState = {"未审核","已审核"};
				String []publicState = {"公开","不公开"};
				HashMap<String,String> typemap = new HashMap<String,String>();
				typemap.put("software", "软件");
				typemap.put("model", "模型");
				typemap.put("doc", "文档");
				typemap.put("video", "视频");
				JSONObject joo = new JSONObject();
		        JSONArray jao = new JSONArray();
		        for (Resource res : resList) {
		        	String author = ((new UserControl()).getUser(res.getAuthorid())).getUsername();
					String createtime = new SimpleDateFormat("yyyy/MM/dd").format(res.getCreatetime());
					JSONObject joi = new JSONObject();
					joi.put("id", res.getResourceid());
					JSONArray jai = new JSONArray();
					jai.put("<a href=\"../resinfo.jsp?type="+res.getRestype()+"&id="+res.getResourceid()+"\" title=\""+res.getTitle() + "\">" + res.getTitle() + "</a>")
						.put(author).put(typemap.get(res.getRestype()))
						.put(createtime).put(res.getSize()+"M").put(res.getCoin())
						.put(res.getViewtimes()).put(res.getDownloadtimes())
						.put(publicState[res.getIspublic()]).put(verifyState[res.getIspass()]);
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
				ResourceControl rc = new ResourceControl();
				Resource res = rc.getResourcebyId(id);
				rc.deleteResource(res);
				response.getWriter().write("true");
			} else if ("verify".equals(command)) {
				Integer id = Integer.parseInt(request.getParameter("id"));
				ResourceControl rc = new ResourceControl();
				Resource res = rc.getResourcebyId(id);
				res.setIspass(1);
				rc.updateResource(res);
				response.getWriter().write("true");
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				response.getWriter().print("false");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
}
