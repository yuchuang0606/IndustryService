package test;
import java.util.Date;
import java.util.List;

import datacontrol.UserControl;
import model.User;
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserControl uc=new UserControl();
		//User u=uc.getUser(1);
		//u.setPassword("asdf");
		//uc.updateUser(u);
		//List<User> my=uc.listUser("username", "admin");
		uc.addLoginTimes(1);
		System.out.print(uc.verifyUser("fuck", "csdf"));
		System.out.print(uc.getLastLogintime(1));
		//uc.deleteUser(u);
	}

}
