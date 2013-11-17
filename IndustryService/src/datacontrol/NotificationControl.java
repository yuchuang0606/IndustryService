package datacontrol;

import java.util.List;

import model.Notification;

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
	
	public List<Notification> getListByColumn(int start,int size)
	{
		return getListByColumn(start,size,"modifytime");
	}
	
	public List<Notification> getListByColumn(int start,int size,String column)
	{
		return (List<Notification>)(Object)MySessionFactory.getByColumn("Notification", column, start, size);
	}
	
}
