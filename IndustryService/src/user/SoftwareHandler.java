package handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Software;
import model.User;
import datacontrol.SoftwareControl;
import datacontrol.UserControl;

/**
 * Servlet implementation class SoftwareHandler
 */
@WebServlet("/software")
public class SoftwareHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SoftwareHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	
	private void process(HttpServletRequest request,
			HttpServletResponse response) {
		
		try {
			String type = request.getParameter("type");
			Integer page = Integer.parseInt(request.getParameter("page"));
			Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the
																		// size of a
																		// page
			if("list".equals(type)){
				SoftwareControl sc = new SoftwareControl();
				PrintWriter pw = response.getWriter();
				int softTotal = sc.getSoftwareNumber();
				int start = (page - 1) * rp;
				List<Software> softList = sc.getListByColumn(start, rp);
				StringBuffer sb = new StringBuffer();
				sb.append("{\"total\":" + softTotal + ",");
				sb.append("\"page\":" + page + ",");
				sb.append("\"rows\":[");
				int i = 0;
				for (Software soft : softList) {
					sb.append("{\"id\":" + soft.getSoftwareid() + ",");
					sb.append("\"cell\":[" + "\"" + soft.getSoftwareid() + "\","
							+ "\"" + soft.getName() + "\"," + "\"" + soft.getAuthorid() + "\","
							+ "\"" + soft.getSize() + "\"," + "\"" + soft.getLink() + "\","
							+ "\"" + soft.getIspass()
							+ "\"]}");
					if (i != softList.size() - 1)
						sb.append(",");
					i++;
				}
				sb.append("]}");
				String result = new String(sb);
				
				pw.write(result);
			}else if ("update".equals(type)) {	// 修改软件信息
				int softID = Integer.parseInt(request.getParameter("softID"));
                String softname = request.getParameter("softname");
                int author = Integer.parseInt(request.getParameter("author"));
                int size = Integer.parseInt(request.getParameter("size"));
                String path = request.getParameter("path");
                int verify = Integer.parseInt(request.getParameter("verify"));
                Software s = new Software();
                SoftwareControl sc = new SoftwareControl();
                PrintWriter pw = response.getWriter();
                s.setSoftwareid(softID);
                s.setName(softname);
                s.setAuthorid(author);
                s.setSize(size);
                s.setLink(path);
                s.setIspass(verify);
                sc.updateSoftware(s);
                pw.write("true"); 
			}else if ("delete".equals(type)){
				int id = Integer.parseInt(request.getParameter("id"));
				Software s = new Software();
                SoftwareControl sc = new SoftwareControl();
				PrintWriter pw = response.getWriter();
				s.setSoftwareid(id);
				sc.deleteSoftware(s);
				pw.write("true");
			}else if ("add".equals(type)){
				
			}
			}catch (Exception e) {
			
		}
		
	}

}
