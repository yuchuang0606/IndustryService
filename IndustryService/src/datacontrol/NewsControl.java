package datacontrol;

import java.util.List;

import model.News;

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
}
