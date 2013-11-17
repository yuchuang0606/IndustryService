/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
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
	
	public int getSoftwareNumber()
	{
		return MySessionFactory.getItemNumber("Software");
	}
	
	public List<Software> getListByColumn(int start,int size)
	{
		return getListByColumn(start,size,"createtime");
	}
	
	public List<Software> getListByColumn(int start,int size,String column)
	{
		return (List<Software>)(Object)MySessionFactory.getByColumn("Software", column, start, size);
	}
}
