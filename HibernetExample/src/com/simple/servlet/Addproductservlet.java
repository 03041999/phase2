package com.simple.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entitey.learn.Eproduct;
import com.simple.util.HibernateUtil;

/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/Addproduct")
public class Addproductservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addproductservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("add-product.html").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String productName = request.getParameter("name");
		String productPrice = request.getParameter("price");
		
		
		SessionFactory sf = HibernateUtil.buildSessionFactory();
		
		
		Session session = sf.openSession();
		
		
		Transaction tx =  session.beginTransaction();
		
		
		Eproduct product = new Eproduct();
		product.setName(productName);
		product.setPrice(Double.parseDouble(productPrice));
		
		
		session.save(product);
		
		tx.commit();
		
		out.print("<h3> Product is created successfully ! <h3>");
		session.close();
	}

}
