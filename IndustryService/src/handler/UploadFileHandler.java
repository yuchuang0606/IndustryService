package handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;  
import org.apache.commons.fileupload.FileUploadException;  
import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;  

/**
 * Servlet implementation class UploadFileHandler
 */
@WebServlet("/upload")
public class UploadFileHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			PrintWriter pw = response.getWriter();
			String savePath = request.getServletContext()  
	                .getRealPath("");
	        savePath = savePath + "\\uploads\\";  
	        //System.out.println(savePath);
	        File f1 = new File(savePath);  
	        if (!f1.exists()) {  
	            f1.mkdirs();  
	        }  
	        DiskFileItemFactory fac = new DiskFileItemFactory();  
	        ServletFileUpload upload = new ServletFileUpload(fac);  
	        upload.setHeaderEncoding("utf-8");  
	        List fileList = null;  
	
	        fileList = upload.parseRequest(request);  
	        if (fileList.size() == 0) {
	        	pw.write("false");return;
	        }
	        Iterator<FileItem> it = fileList.iterator();  
	        String name = "";  
	        String realname="";
	        String extName = "";  
	        while (it.hasNext()) {  
	            FileItem item = it.next();  
	            if (!item.isFormField()) {  
	            	realname=name = item.getName();  
	                long size = item.getSize();  
	                String type = item.getContentType();  
	                //System.out.println(size + " " + type);  
	                if (name == null || name.trim().equals("")) {  
	                    continue;  
	                }  
	                //扩展名格式：    
	                if (name.lastIndexOf(".") >= 0) {  
	                    extName = name.substring(name.lastIndexOf("."));  
	                    extName=extName.toLowerCase();
	                }  
	                File file = null;  
	                do {  
	                    //生成文件名：  
	                    name = UUID.randomUUID().toString();  
	                    file = new File(savePath + name + extName);  
	                } while (file.exists());  
	                File saveFile = new File(savePath + name + extName);  
	                item.write(saveFile);  
	            }  
	        }  
	        
	        if(extName.equals(".jpg")||extName.equals(".png")||extName.equals(".gif"))
	        {
	        	response.getWriter().print("/uploads/"+name+extName); 
	        }
	        else
	        	response.getWriter().print("/uploads/"+name+extName);
		} catch (Exception ex) { 
			
        } 
    }  

}
