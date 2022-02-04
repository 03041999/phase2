package com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdbc.util.DBconnection;

/**
 * Servlet implementation class ListDataServlet
 */
@WebServlet("/listProducts")
public class ListData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListData() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "jdbc:mysql://localhost:3306/ecommerce";
		String userName = "root";
		String password = "password";

		PrintWriter out = response.getWriter();
		out.println("<html> <body>");
		try {
			DBconnection dbconnection = new DBconnection(url, userName, password);
			
			Connection connection = dbconnection.getConnection();
			
			Statement stmt = connection.createStatement();
			
			
			ResultSet rs = stmt.executeQuery("select * from eproduct_25012022");
			
			while(rs.next()) {
				String productName = rs.getString("name");
				BigDecimal price = rs.getBigDecimal("price");
				Date dateAdded = rs.getDate("date_added");
				
				out.println(productName+" "+price+" "+dateAdded +"<br/>");
			}

			stmt.close();
			out.println("</body></html>");
			dbconnection.closeConnection();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}