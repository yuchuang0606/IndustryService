package datacontrol;

import java.util.List;

import model.Downloadrecord;

public class DownloadrecordControl {
	public void addDownloadrecord(Downloadrecord u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteDownloadrecord(Downloadrecord u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateDownloadrecord(Downloadrecord u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Downloadrecord> listDownloadrecord(String prop,String value)
	{
		return (List<Downloadrecord>)(Object)MySessionFactory.getByprop("Downloadrecord", prop, value);
	}
	
	public Downloadrecord getDownloadrecordbyId(int id)
	{
		List<Downloadrecord> li=listDownloadrecord("recordid",String.valueOf(id));
		if(li.size()>0) return li.get(0);
		return null;
	}
	
	public int getDownloadrecordNumber()
	{
		return MySessionFactory.getItemNumber("Downloadrecord");
	}
	
	public int getNumberByProp(String prop, String value)
	{
		return MySessionFactory.getItemNumberByProp("Downloadrecord", prop, value);
	}
	
	public List<Downloadrecord> getListByColumn(int start,int size,String column)
	{
		return (List<Downloadrecord>)(Object)MySessionFactory.getByColumn("Downloadrecord", column, start, size);
	}
}
