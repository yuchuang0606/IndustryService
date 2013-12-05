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
import model.Video;
import datacontrol.SoftwareControl;
import datacontrol.VideoControl;

/**
 * Servlet implementation class VideoHandler
 */
@WebServlet("/video")
public class VideoHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoHandler() {
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
			Integer page = Integer.parseInt(request.getParameter("page"));
			Integer rp = Integer.parseInt(request.getParameter("rp")); // rp is the
																		// size of a
																		// page
	
			VideoControl vc = new VideoControl();
			int videoTotal = vc.getVideoNumber();
			int start = (page - 1) * rp;
			List<Video> videoList = vc.getListByColumn(start, rp);
			StringBuffer sb = new StringBuffer();
			sb.append("{\"total\":" + videoTotal + ",");
			sb.append("\"page\":" + page + ",");
			sb.append("\"rows\":[");
			int i = 0;
			for (Video video : videoList) {
				sb.append("{\"id\":" + video.getVideoid() + ",");
				sb.append("\"cell\":[" + video.getVideoid() + ","
						+ video.getFilename() + "," + video.getAuthorid() + ","
						+ video.getVideosize() + "," + video.getLink() + ","
						+ video.getVideotype()  + ","
						+ video.getIspass() +  "]}");
				if (i != videoList.size() - 1)
					sb.append(",");
				i++;
			}
			sb.append("]}");
			String result = new String(sb);
			PrintWriter pw = response.getWriter();
			pw.write(result);
		} catch (Exception e) {
			
		}
		
	}

}
