/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.Resource;

public class ResourceControl {
	public void addResource(Resource u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteResource(Resource u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateResource(Resource u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Resource> listResource(String prop,String value)
	{
		return (List<Resource>)(Object)MySessionFactory.getByprop("Resource", prop, value);
	}
	
	public int getResourceNumber()
	{
		return MySessionFactory.getItemNumber("Resource");
	}
	
	public int getNumberByProp(String prop, String value)
	{
		return MySessionFactory.getItemNumberByProp("Resource", prop, value);
	}
	
	public List<Resource> getListByColumn(int start,int size)
	{
		return getListByColumn(start,size,"createtime");
	}
	
	public List<Resource> getListByColumn(int start,int size,String column)
	{
		return (List<Resource>)(Object)MySessionFactory.getByColumn("Resource", column, start, size);
	}
	
	public List<Resource> getByPropAndColumn(String prop,String value,String column,int start,int size)
	{
		return (List<Resource>)(Object)MySessionFactory.getByPropAndColumn("Resource", prop, value, column, start, size);
	}
	
	public void addDownloadtime(int id)
	{
		Resource n=getResourcebyId(id);
		n.setDownloadtimes(n.getDownloadtimes()+1);
		updateResource(n);
	}
	
	public Resource getResourcebyId(int id)
	{
		List<Resource> li=listResource("resourceid",String.valueOf(id));
		if(li.size()>0) return li.get(0);
		return null;
	}
	
	public List<Resource> SearchByColumn(String column,String value)
	{
		return (List<Resource>)(Object)MySessionFactory.getBypropLike("Resource", column, value);
	}
	
}
