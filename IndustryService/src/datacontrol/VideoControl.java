package datacontrol;

import java.util.List;

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
}
