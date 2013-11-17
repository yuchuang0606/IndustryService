/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.Groupitem;

public class GroupitemControl {
	public void addGroupitem(Groupitem u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteGroupitem(Groupitem u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateGroupitem(Groupitem u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Groupitem> listGroupitem(String prop,String value)
	{
		return (List<Groupitem>)(Object)MySessionFactory.getByprop("Groupitem", prop, value);
	}
}
