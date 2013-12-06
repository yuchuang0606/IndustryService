package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Configuration;
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

	@SuppressWarnings("null")
	private void process(HttpServletRequest request,
			HttpServletResponse response) {
		String type = request.getParameter("type");
		if ("link".equals(type)) {
			String name0 = request.getParameter("name0");
			String link0 = request.getParameter("link0");
			int id0 = Integer.parseInt(request.getParameter("id0"));
			String name1 = request.getParameter("name1");
			String link1 = request.getParameter("link1");
			int id1 = Integer.parseInt(request.getParameter("id1"));
			String name2 = request.getParameter("name2");
			String link2 = request.getParameter("link2");
			int id2 = Integer.parseInt(request.getParameter("id2"));
			String name3 = request.getParameter("name3");
			String link3 = request.getParameter("link3");
			int id3 = Integer.parseInt(request.getParameter("id3"));
			String name4 = request.getParameter("name4");
			String link4 = request.getParameter("link4");
			int id4 = Integer.parseInt(request.getParameter("id4"));
			String name5 = request.getParameter("name5");
			String link5 = request.getParameter("link5");
			int id5 = Integer.parseInt(request.getParameter("id5"));

			String name[] = { name0, name1, name2, name3, name4, name5 };
			String link[] = { link0, link1, link2, link3, link4, link5 };
			int id[] = { id0, id1, id2, id3, id4, id5 };
			ConfigurationControl cc = new ConfigurationControl();

			for (int j = 0; j < 6; j++) {
				if (name[j] != null) {
					Configuration cf = new Configuration();
					cf.setConfigid(id[j]);
					cf.setCondition((name[j]));
					cf.setConfig_path(link[j]);
					cf.setConfig_path("link");

					cc.updateConfiguration(cf);
				}
			}
		} else if ("online".equals(type)) {

			String link0 = request.getParameter("contect_qq");
			int id0 = Integer.parseInt(request.getParameter("id0"));

			String link1 = request.getParameter("contect_email");
			int id1 = Integer.parseInt(request.getParameter("id1"));

			String link2 = request.getParameter("contect_forum");
			int id2 = Integer.parseInt(request.getParameter("id2"));

			ConfigurationControl cc = new ConfigurationControl();
			String link[] = { link0, link1, link2 };
			int id[] = { id0, id1, id2 };
			Configuration cf[] = null;
			for (int i = 0; i < 3; i++) {
				cf[i] = new Configuration();
				cf[i].setConfigid(id[i]);
				cf[i].setConfig_path(link[i]);
			}

			cf[0].setConfig_name("contect_qq");
			cf[1].setConfig_name("contect_eamil");
			cf[2].setConfig_name("contect_forum");

			for (int j = 0; j < 3; j++)
				cc.updateConfiguration(cf[j]);
		}
	}

}
