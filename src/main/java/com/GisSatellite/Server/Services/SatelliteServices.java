package com.GisSatellite.Server.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.GisSatellite.Server.Entities.Satellite;
import com.GisSatellite.Server.Repository.SatelliteRepository;



@Component
public class SatelliteServices {
	
//	private static final String String = null;
	@Autowired
	private SatelliteRepository satelliteRepository;
	
	
	
	public Satellite addsatellite(Satellite form)
	{
	 Satellite result = satelliteRepository.save(form);
	// Satellite result = satelliteRepository.addgeom(form);
		
		return result;
	}
	
//	public Satellite addgeom()
//	{
//	 //Satellite result = satelliteRepository.save(form);
//		Satellite result = satelliteRepository.addgeom();
//		
//		return result;
//	}
//	
	
	 public List<Satellite> listAll(String keyword) {
		 
		 if(keyword !=null) {
			 return satelliteRepository.search(keyword);
		 }
	        return satelliteRepository.findAll();
	    }
	
//	 public List<Satellite> listAllById(String id){ 
//	 
//	  if(id != null) {  
//	  
//		  	return satelliteRepository.search1(String);
//		  	
//	  }
//	  return satelliteRepository.findAllById(String);
//	  	
//	  }
	 
}
