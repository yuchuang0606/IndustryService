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
		/*
		System.out.println(nc.getNewsNumber());
		ResourceControl rc = new ResourceControl();
		Resource res = new Resource();
		res.setAuthorid(1);
		res.setCreatetime(new Date());
		res.setDownloadtimes(0);
		res.setCoin(0);
		res.setIspass(0);
		res.setIspublic(1);
		res.setLink("/uploads/db41c625-cc00-41d5-997d-bb29fc0713f5.rar");
		res.setFilename("CVS setup.rar");
		res.setSdescribe("最美好的感情结束在最美好的时候，不会被互相争吵和无理取闹之后伤了彼此。安静的和妥协的结束或许是对一段感情最负责的结束方式。");
		res.setOnlinelink(null);
		res.setSize(2.0);
		res.setRespic("/uploads/3b3402eb-d3ed-489b-897d-efe434940f67.jpg");
		res.setRestype("video");
		res.setTag("标签");
		res.setTitle("测试名称");
		res.setViewtimes(0);
		System.out.println(res.toString());
		rc.addResource(res);
		
		List<Resource> reslist = rc.listResource("restype", "video");
		System.out.println(reslist.size());
		System.out.println(rc.getResourceNumber());
		System.out.println(nc.listNews("author", "1").size());
		System.out.println(rc.getByPropAndColumn("authorid", "1", "createtime", 0, 5));*/
		System.out.println(new Date().toLocaleString());
	}

}
