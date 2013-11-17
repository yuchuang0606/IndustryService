/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.Configuration;

public class ConfigurationControl {
	public void addConfiguration(Configuration u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteConfiguration(Configuration u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateConfiguration(Configuration u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Configuration> listConfiguration(String prop,String value)
	{
		return (List<Configuration>)(Object)MySessionFactory.getByprop("Configuration", prop, value);
	}
}
