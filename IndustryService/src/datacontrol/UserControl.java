package datacontrol;

import java.security.MessageDigest;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;

import model.User;

public class UserControl {

	public UserControl() {
		// TODO Auto-generated constructor stub
		
	}
	
	public void addUser(User u)
	{
		u.setPassword(MD5(u.getPassword()));
		MySessionFactory.executeAdd(u);
	}
	
	public void deleteUser(User u)
	{
		MySessionFactory.executeDelete(u);
	}
	
	public void updateUser(User u)
	{
		u.setPassword(MD5(u.getPassword()));
		MySessionFactory.executeUpdate(u);
	}
	
	public List<User> listUser(String prop,String value)
	{
		return (List<User>)(Object)MySessionFactory.getByprop("User", prop, value);
	}
	
	
	//在登录次数增加前查询 !important
	public Date getLastLogintime(int userid)
	{
		List<User> li=(List<User>)(Object)(MySessionFactory.executeQuery("From User u where u.userid="+userid));
		if(li.size()>0) return li.get(0).getLastlogin();
		else return null;
	}
	
	public void addLoginTimes(int userid)
	{
		User u=getUser(userid);
		u.setLogintimes(u.getLogintimes()+1);
		updateUser(u);
	}
	
	public User getUser(int userid)
	{
		List<User> li= (List<User>)(Object)MySessionFactory.executeQuery("From User u where u.userid="+userid);
		if(li.size()>0) return li.get(0);
		else return null;
	}
	//返回值为 “true”表示登录成功
	public String verifyUser(String name,String password)
	{
		List<User> li= (List<User>)(Object)MySessionFactory.executeQuery("From User u where u.username='"+name+"'");
		if(li.size() == 0) return "不存在该用户";
		else if(li.get(0).getPassword().equals(MD5(password)))
		{
			return "true";
		}
		
		return "false";
	}
	
	//MD5加密函数
	public final static String MD5(String s) {
        char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};       
        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
