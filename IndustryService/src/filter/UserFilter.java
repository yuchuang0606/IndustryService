package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

/**
 * Servlet Filter implementation class UserFilter
 */
public class UserFilter implements Filter {

    /**
     * Default constructor. 
     */
    public UserFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		try {
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			HttpServletRequest req = (HttpServletRequest)request;
			HttpServletResponse res = (HttpServletResponse)response;
			User user = (User)req.getSession().getAttribute("user");
			//System.out.println(request.getServletContext().getRealPath(""));
			//System.out.println(request.getServletContext().getContextPath());
			if (null == user) {
				PrintWriter pw = res.getWriter();
				
				//System.out.println(req.getContextPath());
				//response.setContentType("text/html;charset=utf-8");
				//res.setCharacterEncoding("utf-8");
				pw.write("<html><script> alert('用户不存在或登录已超时');location.href='"+req.getContextPath()+"/index.jsp"+"';</script></html>");
				//res.sendRedirect(request.getServletContext()+"/index.jsp");
			}
			// pass the request along the filter chain
			chain.doFilter(request, response);
		} catch (Exception e) {
			
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
