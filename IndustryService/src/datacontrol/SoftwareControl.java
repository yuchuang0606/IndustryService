package datacontrol;

import java.util.List;

import model.Software;

public class SoftwareControl {
	public void addSoftware(Software u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteSoftware(Software u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateSoftware(Software u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Software> listSoftware(String prop,String value)
	{
		return (List<Software>)(Object)MySessionFactory.getByprop("Software", prop, value);
	}
}
