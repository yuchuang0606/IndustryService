/**
 * @authored by chenchi
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.Restype;

public class RestypeControl {
	public void addRestype(Restype u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteRestype(Restype u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateRestype(Restype u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Restype> listRestype(String prop,String value)
	{
		return (List<Restype>)(Object)MySessionFactory.getByprop("Restype", prop, value);
	}
}
