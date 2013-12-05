package test;
import java.util.Date;
import java.util.List;







import datacontrol.NewsControl;
import datacontrol.ResourceControl;
import datacontrol.UserControl;
import model.News;
import model.Resource;
import model.User;
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NewsControl nc=new NewsControl();
		//List<News> li=nc.getListByColumn(1, 3);
		//System.out.print(li.get(0).getContent());
		//UserControl uc=new UserControl();
		//uc.SendEmail("admin", "350543585@qq.com");
		System.out.println(nc.getNewsNumber());
		ResourceControl rc = new ResourceControl();
		
		List<Resource> reslist = rc.listResource("restype", "video");
		System.out.println(reslist.size());
		System.out.println(rc.getResourceNumber());
		System.out.println(nc.listNews("author", "1").size());
		System.out.println(rc.listResource("restype", "software"));
	}

}
