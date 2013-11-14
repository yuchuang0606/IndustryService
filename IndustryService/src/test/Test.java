package test;
import java.util.Date;
import java.util.List;

import datacontrol.UserControl;
import model.User;
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
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
		System.out.print(my.size());
		//uc.deleteUser(u);
	}

}
