package datacontrol;

import java.util.List;

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
}
