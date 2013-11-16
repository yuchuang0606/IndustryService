package test;
import java.util.Date;
import java.util.List;

import datacontrol.ConfigurationControl;
import datacontrol.UserControl;
import model.Configuration;
import model.User;
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		UserControl uc=new UserControl();
		User u=new User();
		u.setUsername("admin");
		u.setPassword("fuck");
		u.setAddress("admin");
		u.setPhone("a123");
		u.setQq("41654651");
		u.setEmail("admin@admin.com");
		u.setRegdate(new Date());
		u.setUsergroup(1);
		u.setUserid(2);
		//uc.addUser(u);
		List<User> my=uc.listUser("username", "admin");
		System.out.println(my.size());
		*/
		ConfigurationControl cc = new ConfigurationControl();
		List<Configuration> configList = cc.listConfiguration("config_name", "2dCAD");
		if (null == configList)
			System.out.println("aaa");
		String condition = configList.get(0).getCondition();
		System.out.println(configList.size());
		System.out.println(condition);
	}

}
