/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.News;
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
	
	public void addDownloadtime(int id)
	{
		Software n=getSoftwarebyId(id);
		n.setDownloadtimes(n.getDownloadtimes()+1);
		updateSoftware(n);
	}
	
	public Software getSoftwarebyId(int id)
	{
		List<Software> li=listSoftware("softwareid",String.valueOf(id));
		if(li.size()>0) return li.get(0);
		return null;
	}
	
}
