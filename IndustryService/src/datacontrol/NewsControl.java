package datacontrol;

import java.util.List;

import model.News;
import model.Video;

public class NewsControl {
	
	public void addNews(News u)
	{
		MySessionFactory.executeAdd(u);
	}
	
	public void deleteNews(News u)
	{
		MySessionFactory.executeDelete(u);
	}
	
	public void updateNews(News u)
	{
		MySessionFactory.executeUpdate(u);
	}
	
	public List<News> listNews(String prop,String value)
	{
		return (List<News>)(Object)MySessionFactory.getByprop("News", prop, value);
	}
	
	public List<News> SearchByColumn(String column,String value)
	{
		return (List<News>)(Object)MySessionFactory.getBypropLike("News", column, value);
	}
	
	public int getNewsNumber()
	{
		return MySessionFactory.getItemNumber("News");
	}
	
	public int getNumberByProp(String prop, String value)
	{
		return MySessionFactory.getItemNumberByProp("News", prop, value);
	}
	
	public List<News> getListByColumn(int start,int size)
	{
		return getListByColumn(start,size,"modifytime");
	}
	
	public List<News> getListByColumn(int start,int size,String column)
	{
		return (List<News>)(Object)MySessionFactory.getByColumn("News", column, start, size);
	}
	
	public List<News> getByPropAndColumn(String prop, String value,String column, int start,int size)
	{
		return (List<News>)(Object)MySessionFactory.getByPropAndColumn("News", prop, value, column, start, size);
	}
	
	
	public News getNewsbyId(int id)
	{
		List<News> li=listNews("newsid",String.valueOf(id));
		if(li.size()>0) return li.get(0);
		return null;
	}
	
	public void addAccess(int id)
	{
		News n=getNewsbyId(id);
		n.setAccesstime(n.getAccesstime()+1);
		updateNews(n);
	}
	
}
