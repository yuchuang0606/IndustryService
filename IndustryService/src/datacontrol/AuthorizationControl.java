package datacontrol;

import java.util.List;

import model.Authorization;

public class AuthorizationControl {
	public void addAuthorization(Authorization u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteAuthorization(Authorization u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateAuthorization(Authorization u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Authorization> listAuthorization(String prop,String value)
	{
		return (List<Authorization>)(Object)MySessionFactory.getByprop("Authorization", prop, value);
	}
}
