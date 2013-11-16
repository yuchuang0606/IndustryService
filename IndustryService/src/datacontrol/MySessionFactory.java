package datacontrol;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public  class  MySessionFactory {

	static SessionFactory factory;
	static boolean isInit=false;
	
	public static synchronized void initMySessionFactory() {
		Configuration cfg = new Configuration().configure();
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder()
		.applySettings(cfg.getProperties()).buildServiceRegistry();
		factory = cfg.buildSessionFactory(serviceRegistry);
	}
	
	public static List<Object> executeQuery(String s)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		List<Object> result=null;
		Session session=null;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			result =  session.createQuery(s).list();
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
				session.getTransaction().rollback();
			} finally{
				if(session!=null) 
					session.close();
				return result;
			}
	}
	
	public static void executeAdd(Object o)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			session.save(o);
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			}
	}
	
	public static void executeUpdate(Object o)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			session.update(o);
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			}
	}
	
	public static List<Object> getByprop(String cname,String prop,String value)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		List<Object> result=null;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			result=session.createQuery("from "+cname+" where "+prop+"= :value").setString("value", value).list();
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			return result;
			}
	}
	
	public static void executeDelete(Object o)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			session.delete(o);
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			}
	}

}
