package com.GisSatellite.Server.Controller;


import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.Timestamp;

import org.springframework.stereotype.Controller;

@Controller
public class CommonController {
	
	public String fileupload(byte[] b,String name)
	{
		String extension = "";
       	String fname ="";
        System.out.println(b+"========b");
		try{
			byte[] bytes =b;  // file.getBytes();
            // Creating the directory to store file
	       	//String rootPath = System.getProperty("catalina.home");
	       	
	        String rootPath = "/src/main/";
	        File dir = new File(rootPath);
        
      		if (!dir.exists())
        	    dir.mkdirs();
                 
            String filename =name;  //file.getOriginalFilename();
            System.out.println(filename+"========filename");
            int i = filename.lastIndexOf('.');
            if (i >= 0) {
	        	extension = filename.substring(i+1);
        	}
            //String arr[]=filename.toString().split("."+extension);
          // Create the file on server
	        java.util.Date date= new java.util.Date();
	        
	       // C:\srv\mod\20191116105540.205.jpg
	        System.out.println(extension+"===============extension=====extension");
	       	fname = rootPath + (new Timestamp(date.getTime())).toString().replace(":", "").toString().replace(".", ".").toString().replace(" ","").toString().replace("-","").toString()+ "."+extension;
        	//fname = dir.getAbsolutePath() + File.separator + arr[0]+"_"+ (new Timestamp(date.getTime())).toString().replace(":", "").toString().replace(".", ".").toString().replace(" ","").toString().replace("-","").toString()+ "."+extension;
	        
       		File serverFile = new File(fname);	    
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
            stream.write(bytes);	                
            stream.close();			
		}catch (Exception e) {
        	System.out.println("Error");
		}
		return fname;
	}

}

