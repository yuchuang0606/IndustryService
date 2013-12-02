/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package datacontrol;

import java.security.MessageDigest;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;

import com.mail.MailSenderInfo;
import com.mail.SimpleMailSender;

import model.User;

public class UserControl {

	public UserControl() {
		// TODO Auto-generated constructor stub
		
	}
	
	//将用户组设置为3，未激活用户
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
		MySessionFactory.executeUpdate(u);
	}
	
	public void updatePassword(User u)
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
	
	public void SendEmail(User u)
	{
		MailSenderInfo mailInfo = new MailSenderInfo();    
	    mailInfo.setMailServerHost("smtp.163.com");    
	    mailInfo.setMailServerPort("25");    
	    mailInfo.setValidate(true);    
	    mailInfo.setUserName("daliangysj@163.com");    
	    mailInfo.setPassword("daliangysj123");//您的邮箱密码    
	    mailInfo.setFromAddress("daliangysj@163.com");    
	    mailInfo.setToAddress(u.getEmail());    
	    mailInfo.setSubject("大连工业设计服务平台账户激活邮件");    
	    mailInfo.setContent("http://ddd.bbb.com?token="+MD5(u.getRegdate().toString())+"&user="+u.getUsername());    
	         //这个类主要来发送邮件   
	    SimpleMailSender sms = new SimpleMailSender();   
	    //sms.sendTextMail(mailInfo);//发送文体格式    
	    sms.sendHtmlMail(mailInfo);//发送html格式   
	}
	public boolean ActiveUser(String token,String username)
	{
		List<User> li=listUser("username",username);
		if(li.size()<1) return false;
		User u=li.get(0);
		if(MD5(u.getRegdate().toString()).equals(token)) 
		{
			u.setUsergroup(1);
			updateUser(u);
			return true;
		}
		else return false;
	}
	//MD5加密函数
	public final static String MD5(String s) {
        char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};       
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
