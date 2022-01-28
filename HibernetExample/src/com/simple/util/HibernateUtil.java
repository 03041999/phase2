package com.simple.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entitey.learn.Eproduct;
public class HibernateUtil {

	public static SessionFactory buildSessionFactory() {
	Configuration cfg = new Configuration();
	cfg.configure("hibernate.cfg.xml");
	cfg.addAnnotatedClass(Eproduct.class);
	SessionFactory sf = cfg.buildSessionFactory();

	return sf;
}


}