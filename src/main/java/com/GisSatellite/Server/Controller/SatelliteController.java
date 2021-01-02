package com.GisSatellite.Server.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.locationtech.jts.geom.Geometry;
import org.locationtech.jts.io.WKTReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.GisSatellite.Server.Entities.Satellite;
import com.GisSatellite.Server.Repository.SatelliteRepository;
import com.GisSatellite.Server.Services.SatelliteServices;
import com.sun.el.parser.ParseException;



@Controller

public class SatelliteController {
	

	
	@Autowired
	private SatelliteServices satelliteServices;
	
	@Autowired
	private SatelliteRepository satelliteRepo;
	
	@Autowired
	private CommonController comcon;
	
	@RequestMapping("/satelliteform")
	public String home1() {
		return "satelliteform";
	}

	@RequestMapping("/attribute")
	public String home2() {
		return "attribute";
	}
	@RequestMapping(path="/attribute", method=RequestMethod.GET)
	public String getData(Model model,@Param("keyword") String keyword) {
	    List<Satellite> list = satelliteServices.listAll(keyword);
	   
	    model.addAttribute("list", list);
	    model.addAttribute("keyword", keyword);
	     
	    return "attribute";
	}
	

	
	
	@RequestMapping(path="/success", method=RequestMethod.POST, consumes = {"multipart/form-data"})
	public String handlerform(@ModelAttribute @Validated Satellite satelliteform,BindingResult bindingResult,
			@RequestParam(value = "image1") MultipartFile image1,
			 
			
			HttpServletRequest request, MultipartHttpServletRequest req,
			@RequestParam(value = "msg", required = false) String msg, ModelMap modelMap) throws ParseException
	{
		
		try {
			if (!image1.isEmpty()) {
				String name = comcon.fileupload(image1.getBytes(), image1.getOriginalFilename());
				if (name != "") {
					satelliteform.setImage1(name);
					//adminform.setPre_not(name);
				}
			}
			
//			if (!image2.isEmpty()) {
//				String name = comcon.fileupload(image2.getBytes(), image2.getOriginalFilename());
//				if (name != "") {
//					satelliteform.setImage2(name);
//					//adminform.setPre_not(name);
//				}
//			}
//			if (!image3.isEmpty()) {
//				String name = comcon.fileupload(image3.getBytes(), image3.getOriginalFilename());
//				if (name != "") {
//					satelliteform.setImage3(name);
//					//adminform.setPre_not(name);
//				}
//			}
		} catch (Exception e) {
		}
		
		System.out.println(satelliteform);
		
		//String wkt="POLYGON((75.83036587499998 22.921094475424255,79.08231899999998 23.64767847769751,79.69755337499998 20.71823588581489,76.35770962499998 20.22419690313707,75.83036587499998 22.921094475424255))";
	
		String wkt = "POLYGON(("+satelliteform.getUllong()+" "+satelliteform.getUllat()+"," +satelliteform.getUrlong()+" "+satelliteform.getUrlat()+","+satelliteform.getLrlong()+" "+satelliteform.getLrlat()+"," +satelliteform.getLllong()+" "+satelliteform.getLllat()+","+satelliteform.getUllong()+" "+satelliteform.getUllat()+"))";

		WKTReader wktReader = new WKTReader();
		
		try {

			satelliteform.setWktgeom(wkt);
			Geometry geom = wktReader.read(satelliteform.getWktgeom());
			satelliteform.setAddgeom(geom);
		
		} catch (Exception e) {
			
			System.out.println(e.getMessage());
			e.printStackTrace();
		}

		System.out.println(satelliteform);

		satelliteRepo.save(satelliteform);
		return "success";
		
	}

	}
	
		
	
	
	
	

