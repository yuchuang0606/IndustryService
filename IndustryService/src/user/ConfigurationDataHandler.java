package user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Configuration;
import model.User;
import datacontrol.ConfigurationControl;

/**
 * Servlet implementation class ConfigurationDataHandler
 */
@WebServlet("/user/configdata")
public class ConfigurationDataHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConfigurationDataHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		// TODO Auto-generated method stub

	}

	private void process(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			User user = (User)request.getSession().getAttribute("user");
			if (user.getUsergroup() != 1) {// only administrator can call this function
				response.getWriter().write("<html><script> alert('没有权限调用此操作');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
				return ;
			}
			String type = request.getParameter("type");
			request.getServletContext().log(user.getUsername() + " call " + type + "in configuration data");
			if ("link".equals(type)) {
				String name0 = request.getParameter("name0");
				String link0 = request.getParameter("link0");
				//int id0 = Integer.parseInt(request.getParameter("id0"));
				String name1 = request.getParameter("name1");
				String link1 = request.getParameter("link1");

				String name2 = request.getParameter("name2");
				String link2 = request.getParameter("link2");

				String name3 = request.getParameter("name3");
				String link3 = request.getParameter("link3");

				String name4 = request.getParameter("name4");
				String link4 = request.getParameter("link4");

				String name5 = request.getParameter("name5");
				String link5 = request.getParameter("link5");
	
				String name[] = { name0, name1, name2, name3, name4, name5 };
				String link[] = { link0, link1, link2, link3, link4, link5 };
				ConfigurationControl cc = new ConfigurationControl();
				List<Configuration> linkList = cc.listConfiguration("config_name", "link");
				int j = 0;
				for (Configuration ll:linkList) {
					if (name[j] != null && link[j] != null) {
						ll.setDescription((name[j]));
						ll.setConfig_path(link[j]);
						cc.updateConfiguration(ll);
					}
					j++;
				}
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
			} else if ("online".equals(type)) {
	
				String link0 = request.getParameter("contect_qq");
				String link1 = request.getParameter("contect_email");
				String link2 = request.getParameter("contect_forum");
	
				ConfigurationControl cc = new ConfigurationControl();
				String link[] = { link0, link1, link2 };
				List<Configuration> contactList = cc.listConfiguration("config_name", "contact");
				int j = 0;
				for (Configuration cl:contactList) {
					if ( link[j] != null) {
						cl.setDescription(link[j]);
						cc.updateConfiguration(cl);
					}
					j++;
				}
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
			} else if ("footer".equals(type)) {
				String content = request.getParameter("content");
				ConfigurationControl cc = new ConfigurationControl();
				Configuration foot = cc.listConfiguration("config_name", "footer").get(0);
				foot.setDescription(content);
				cc.updateConfiguration(foot);
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
			} else if ("newspic".equals(type)) {
				String name0 = request.getParameter("name0");
				String link0 = request.getParameter("link0");

				String name1 = request.getParameter("name1");
				String link1 = request.getParameter("link1");

				String name2 = request.getParameter("name2");
				String link2 = request.getParameter("link2");

				String name3 = request.getParameter("name3");
				String link3 = request.getParameter("link3");

				String name4 = request.getParameter("name4");
				String link4 = request.getParameter("link4");

				String name5 = request.getParameter("name5");
				String link5 = request.getParameter("link5");
				String name[] = { name0, name1, name2, name3, name4, name5 };
				String link[] = { link0, link1, link2, link3, link4, link5 };

				ConfigurationControl cc = new ConfigurationControl();
				List<Configuration> contactList = cc.listConfiguration("config_name", "newspic");
				int j = 0;
				for (Configuration cl:contactList) {
					if ( name[j] != null && link[j] != null) {
						cl.setConfig_path(link[j]);
						cl.setDescription(name[j]);
						cc.updateConfiguration(cl);
					}
					j++;
				}
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
			} else if ("purchase".equals(type)) {
				String name0 = request.getParameter("name0");
				String link0 = request.getParameter("link0");
				String title0 = request.getParameter("title0");
				String price0 = request.getParameter("price0");

				String name1 = request.getParameter("name1");
				String link1 = request.getParameter("link1");
				String title1 = request.getParameter("title1");
				String price1 = request.getParameter("price1");

				String name2 = request.getParameter("name2");
				String link2 = request.getParameter("link2");
				String title2 = request.getParameter("title2");
				String price2 = request.getParameter("price2");
				
				String[] name = {name0,name1,name2};
				String[] link = {link0,link1,link2};
				String[] title = {title0,title1,title2};
				String[] price = {price0,price1,price2};
				
				ConfigurationControl cc = new ConfigurationControl();
				List<Configuration> contactList = cc.listConfiguration("config_name", "purchase");
				Configuration cf2d = cc.listConfiguration("config_name", "2dCAD").get(0);
				Configuration cf3d = cc.listConfiguration("config_name", "3dCAD").get(0);
				Configuration cf5d = cc.listConfiguration("config_name", "5CAM").get(0);
				cf2d.setConfig_path(name[0]);
				cf3d.setConfig_path(name[1]);
				cf5d.setConfig_path(name[2]);
				cc.updateConfiguration(cf2d);
				cc.updateConfiguration(cf3d);
				cc.updateConfiguration(cf5d);
				int j = 0;
				for (Configuration cl:contactList) {
					if ( link[j] != null) {
						cl.setConfig_path(link[j]);
						cl.setDescription(title[j]);
						cl.setProperty(price[j]);
						cc.updateConfiguration(cl);
					}
					j++;
				}
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
				return;
			} else if ("coinexplain".equals(type)) {
				String content = request.getParameter("content");
				ConfigurationControl cc = new ConfigurationControl();
				Configuration coinexplain = cc.listConfiguration("config_name", "coindeclare").get(0);
				coinexplain.setDescription(content);
				cc.updateConfiguration(coinexplain);
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
				return;
			} else if ("regright".equals(type)) {
				String content = request.getParameter("content");
				ConfigurationControl cc = new ConfigurationControl();
				Configuration regright = cc.listConfiguration("config_name", "regright").get(0);
				regright.setDescription(content);
				cc.updateConfiguration(regright);
				response.getWriter().write("<html><script> alert('修改成功');location.href='"+request.getContextPath()+"/user/user.jsp"+"';</script></html>");
				return;
			}
		} catch (Exception e) {
			request.getServletContext().log(e.getMessage());
			try {
				response.getWriter().write("<html><script> alert('用户配置数据操作出错，请联系管理员！^。^');location.href='"+request.getContextPath()+"/index.jsp"+"';</script></html>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
