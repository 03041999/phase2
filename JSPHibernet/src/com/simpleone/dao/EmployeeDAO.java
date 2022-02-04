package com.simpleone.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.simpleone.entity.Employee;
import com.simpleone.util.HibernateUtil;

public class EmployeeDAO {

	/**
	 * ALT+SHIFT+J Add employee in database
	 * 
	 * @param e
	 */
	public static void addEmployee(Employee e) {

		// 1. Get session factory
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// 2. Open session
		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		// 3. save entity
		session.save(e);

		// 4. Commit transaction
		tx.commit();

		// 5. Close session
		session.close();
	}

	public static List<Employee> listEmployee() {
		// 1. Get session factory
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// 2. Open session
		Session session = sf.openSession();

		List<Employee> employees = session.createQuery("from Employee e").list();

		session.close();

		return employees;
	}
}
