/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.News;
import model.User;
import model.Video;

public class VideoControl {
	public void addVideo(Video u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteVideo(Video u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateVideo(Video u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Video> listVideo(String prop,String value)
	{
		return (List<Video>)(Object)MySessionFactory.getByprop("Video", prop, value);
	}
	
	public Video getById(int videoid)
	{
		List<Video> li= (List<Video>)(Object)MySessionFactory.executeQuery("From Video u where u.videoid="+videoid);
		if(li.size()>0) return li.get(0);
		else return null;
	}
	
	public Video getByName(String name)
	{
		List<Video> li= (List<Video>)(Object)MySessionFactory.executeQuery("From Video u where u.videoid="+name);
		if(li.size()>0) return li.get(0);
		else return null;
	}
	
	public int getVideoNumber()
	{
		return MySessionFactory.getItemNumber("Video");
	}
	
	public List<Video> getListByColumn(int start,int size)
	{
		return getListByColumn(start,size,"createtime");
	}
	
	public List<Video> getListByColumn(int start,int size,String column)
	{
		return (List<Video>)(Object)MySessionFactory.getByColumn("Video", column, start, size);
	}
}
