/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.util.List;

import model.Introduction;


public class IntroductionControl {
	public void addIntroduction(Introduction u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteIntroduction(Introduction u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateIntroduction(Introduction u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Introduction> listIntroduction(String prop,String value)
	{
		return (List<Introduction>)(Object)MySessionFactory.getByprop("Introduction", prop, value);
	}
}
