package datacontrol;

import java.util.List;

import model.Group;

public class GroupControl {
	public void addGroup(Group u)
	{
		MySessionFactory.executeAdd(u);
	}
	public void deleteGroup(Group u)
	{
		MySessionFactory.executeDelete(u);
	}
	public void updateGroup(Group u)
	{
		MySessionFactory.executeUpdate(u);
	}
	public List<Group> listGroup(String prop,String value)
	{
		return (List<Group>)(Object)MySessionFactory.getByprop("Group", prop, value);
	}
}
