package handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datacontrol.ConfigurationControl;
import model.Configuration;

/**
 * Servlet implementation class IntroduceHandler
 */
@WebServlet("/ConfigHandler")
public class ConfigHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfigHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			String configname = request.getParameter("configname");
			ConfigurationControl cc = new ConfigurationControl();
			List<Configuration> configList = cc.listConfiguration("config_name", configname);
			if (null == configList)
				response.sendRedirect("./error.jsp");
			String condition = configList.get(0).getCondition();
			if ("2dCAD".equals(configname))
				configname = "��άCAD����";
			else if ("3dCAD".equals(configname))
				configname = "��άCAD����";
			else if ("5CAM".equals(configname))
				configname = "����CAM����";
			request.setAttribute("configname", configname);
			request.setAttribute("condition", condition);
			request.getRequestDispatcher("introduce.jsp").forward(request, response);
		} catch (Exception e) {
			try {
				response.sendRedirect("./error.jsp");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}