package datacontrol;

import java.util.List;

import model.News;
import model.Notification;
import model.Video;

public class NotificationControl {

	public void addNotification(Notification u)
	{
		MySessionFactory.executeAdd(u);
	}
	
	public void deleteNotification(Notification u)
	{
		MySessionFactory.executeDelete(u);
	}
	
	public void updateNotification(Notification u)
	{
		MySessionFactory.executeUpdate(u);
	}
	
	public List<Notification> listNotification(String prop,String value)
	{
		return (List<Notification>)(Object)MySessionFactory.getByprop("Notification", prop, value);
	}
	
	public int getNotificationNumber()
	{
		return MySessionFactory.getItemNumber("Notification");
	}
	
	public int getNumberByProp(String prop, String value)
	{
		return MySessionFactory.getItemNumberByProp("Notification", prop, value);
	}
	
	public List<Notification> getListByColumn(int start,int size)
	{
		return getListByColumn(start,size,"modifytime");
	}
	
	public List<Notification> getListByColumn(int start,int size,String column)
	{
		return (List<Notification>)(Object)MySessionFactory.getByColumn("Notification", column, start, size);
	}
	
	public List<Notification> getByPropAndColumn(String prop, String value,String column, int start,int size)
	{
		return (List<Notification>)(Object)MySessionFactory.getByPropAndColumn("Notification", prop, value, column, start, size);
	}
	
	public Notification getNotificationbyId(int id)
	{
		List<Notification> li=listNotification("newsid",String.valueOf(id));
		if(li.size()>0) return li.get(0);
		return null;
	}
	
	public void addAccess(int id)
	{
		Notification n=getNotificationbyId(id);
		n.setAccesstime(n.getAccesstime()+1);
		updateNotification(n);
	}
	
	public List<Notification> SearchByColumn(String column,String value)
	{
		return (List<Notification>)(Object)MySessionFactory.getBypropLike("Notification", column, value);
	}
	
	
}
