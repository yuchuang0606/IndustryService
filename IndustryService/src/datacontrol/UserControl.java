package datacontrol;

import java.util.List;

import model.User;

public class UserControl {

	public UserControl() {
		// TODO Auto-generated constructor stub
		
	}
	public void addUser(User u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteUser(User u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateUser(User u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<User> listUser(String prop,String value)
	{
		return (List<User>)(Object)MySessionFactory.getByprop("User", prop, value);
	}

}
