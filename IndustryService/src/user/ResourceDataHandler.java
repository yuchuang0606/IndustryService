package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.ResourceControl;
import datacontrol.VideoControl;
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
				Integer page = Integer.parseInt(request.getParameter("page"));
				Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the size of a page
				ResourceControl rc = new ResourceControl();
				int resTotal = rc.getNumberByProp("userid", String.valueOf(user.getUserid()));
				int start = (page - 1) * rp;
				List<Resource> resList = rc.getByPropAndColumn("userid", String.valueOf(user.getUserid()), "createtime", start, rp);
				StringBuffer sb = new StringBuffer();
				sb.append("{\"total\":" + resTotal + ",");
				sb.append("\"page\":" + page + ",");
				sb.append("\"rows\":[");
				int i = 0;
				for (Resource res : resList) {
					sb.append("{\"id\":" + res.getResourceid() + ",");
					sb.append("\"cell\":[" + res.getResourceid() + ","
							+ res.getFilename() + "," + res.getAuthorid() + ","
							+ res.getSize() + "," + res.getLink() + ","
							+ res.getRestype()  + ","
							+ res.getIspass() +  "]}");
					if (i != resList.size() - 1)
						sb.append(",");
					i++;
				}
				sb.append("]}");
				String result = new String(sb);
				PrintWriter pw = response.getWriter();
				pw.write(result);
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
