package com.simpleone.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.simpleone.entity.Employee;

public class HibernateUtil {

	public static SessionFactory sessionFactory;

	public static SessionFactory buildSessionFactory() {
		if (sessionFactory != null) {
			return sessionFactory;
		}

		sessionFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).buildSessionFactory();
		return sessionFactory;
	}
}
