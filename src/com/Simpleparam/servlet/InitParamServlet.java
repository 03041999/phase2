package com.Simpleparam.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParamServlet
 */
@WebServlet(urlPatterns = "/init-param-example", initParams = @WebInitParam(name="location", value="/tmp/uploads"))
public class InitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String location = null;
	
	public void init(ServletConfig config) throws ServletException
	{
		super.init(config);
		String location = config.getInitParameter("location");
		this.location = location;
		
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletConfig().getInitParameter("location");
		
		String contextLocation = this.getServletContext().getInitParameter("location");
		
		response.getWriter().append("Location from Init Parameter is:").append(location).append("\n Context Location Is: "+contextLocation);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		doGet(request, response);
	}

}
