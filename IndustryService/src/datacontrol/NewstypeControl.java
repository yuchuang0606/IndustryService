/**
 * @authored by chenchi
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.Newstype;

public class NewstypeControl {
	public void addNewstype(Newstype u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteNewstype(Newstype u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateNewstype(Newstype u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Newstype> listNewstype(String prop,String value)
	{
		return (List<Newstype>)(Object)MySessionFactory.getByprop("Newstype", prop, value);
	}
}
