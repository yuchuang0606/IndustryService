/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
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

	static SessionFactory factory=null;
	static boolean isInit=false;
	
	public static synchronized void initMySessionFactory() {
		if(factory==null)
		{
			Configuration cfg = new Configuration().configure();
			ServiceRegistry serviceRegistry = new ServiceRegistryBuilder()
			.applySettings(cfg.getProperties()).buildServiceRegistry();
			factory = cfg.buildSessionFactory(serviceRegistry);
		}
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
	
	public static int getItemNumber(String cname)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		int count =0;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			Query q=session.createQuery("select count(u) from "+cname+" as u");
			count = ((Number)q.uniqueResult()).intValue();  
			
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			return count;
			}
		
	}
	
	public static int getItemNumberByProp(String cname, String prop, String value)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		int count =0;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			Query q=session.createQuery("select count(*) from "+cname+" where "+prop+"= :value").setString("value", value);
			count = ((Number)q.uniqueResult()).intValue();  
			
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			return count;
			}
		
	}
	
	public static int getItemNumberByProps(String cname, String prop, String value, String prop1, String value1)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		int count =0;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			Query q=session.createQuery("select count(*) from "+cname+" where "+prop+"= :value and " + prop1 + "= :value1").setString("value", value).setString("value1", value1);
			count = ((Number)q.uniqueResult()).intValue();  
			
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			return count;
			}
		
	}
	
	public static int getItemNumberByPropes(String cname, String prop, String value, String prop1, String value1, String prop2, String value2)
	{
		if(!isInit) 
		{
			initMySessionFactory();
			isInit=true;
		}
		Session session=null;
		int count =0;
		try{
			session = factory.openSession();
			//开启事务
			session.beginTransaction();
			Query q=session.createQuery("select count(*) from "+cname+" where "+prop+"= :value and " + prop1 + "= :value1 and " + prop2 + "=:value2").setString("value", value).setString("value1", value1).setString("value2", value2);
			count = ((Number)q.uniqueResult()).intValue();  
			
			//提交事务
			session.getTransaction().commit();
			} catch(HibernateException e) {
			e.printStackTrace();
			if(session!=null)
			session.getTransaction().rollback();
			} finally{
			if(session!=null) session.close();
			return count;
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
	
	public static List<Object> getByColumnsAndPropLike(String cname,String colname, String colvalue, String colname1, String colvalue1, String prop,String value)
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
			result=session.createQuery("from "+cname+" where " + colname + "= ? and " +
											colname1 + "= ? and "+ prop + " like ?")
											.setString(0, colvalue).setString(1, colvalue1)
											.setString(2, '%'+value+'%').list();
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
	
	public static List<Object> getByPropAndColumn(String cname,String prop,String value,String column,int start,int size)
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
			Query q=session.createQuery("from "+cname+" x where x."+prop+"= :value" + " order by x."+column + " desc").setString("value", value);
			q.setMaxResults(size);
			q.setFirstResult(start);
			result=q.list();
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
	
	public static List<Object> getByPropAndColumns(String cname,String prop,String value, String prop1, String value1,String column,int start,int size)
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
			Query q=session.createQuery("from "+cname+" x where x."+prop+"= :value and x." + prop1+"= :value1 " + " order by x."+column + " desc").setString("value", value).setString("value1", value1);
			q.setMaxResults(size);
			q.setFirstResult(start);
			result=q.list();
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
	
	public static List<Object> getByPropAndColumnes(String cname, String prop, String value, String prop1, String value1, String prop2, String value2, String column,int start,int size)
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
			Query q=session.createQuery("from "+cname+" x where x." +
											prop + "= :value and x." + 
											prop1 + "= :value1 and x." + 
											prop2 + "= :value2" + 
											" order by x."+column + " desc")
											.setString("value", value)
											.setString("value1", value1)
											.setString("value2", value2);
			q.setMaxResults(size);
			q.setFirstResult(start);
			result=q.list();
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
	
	public static List<Object> getByColumn(String cname,String column,int start,int size)
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
			Query q=session.createQuery("from "+cname+ " x order by x."+column+" desc");
			q.setMaxResults(size);
			q.setFirstResult(start);
			result=q.list();
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
