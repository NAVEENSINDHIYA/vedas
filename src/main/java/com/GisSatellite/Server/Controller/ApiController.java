package com.GisSatellite.Server.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.GisSatellite.Server.Entities.FilterData;
import com.GisSatellite.Server.Entities.Satellite;
import com.GisSatellite.Server.Repository.SatelliteRepository;



@RestController
@ResponseBody
public class ApiController {
	 @PersistenceContext
	    private EntityManager entityManager  ;
	@Autowired
	private SatelliteRepository satelliteRepository;
	
	/*
	 * @RequestMapping(value = "getData", method = RequestMethod.POST) public
	 * List<Satellite> getData(@RequestBody FilterData filterData ) {
	 * 
	 * //System.out.println(filterData.getSatelite());
	 * 
	 * return
	 * satelliteRepository.getFilteredData(filterData.getSatelite(),filterData.
	 * getSensors(),
	 * filterData.getLocalIdFrom(),filterData.getLocalIdTo(),filterData.
	 * getDateOfPassFrom(),
	 * filterData.getDateOfPassTo(),filterData.getPathFrom(),filterData.getPathTo(),
	 * filterData.getRowFrom(),filterData.getRowTo());
	 * 
	 * // return
	 * satelliteRepository.getFilteredData(filterData.getLocalIdFrom(),filterData.
	 * getLocalIdTo(), //
	 * filterData.getSatelite(),filterData.getSensors(),filterData.getDateOfPassFrom
	 * () //
	 * ,filterData.getDataOfPassTo(),filterData.getDateOfPassFrom(),filterData.
	 * getDataOfPassTo() // ,filterData.getRowFrom(),filterData.getPathTo()); }
	 * 
	 */
	@RequestMapping(value = "getData", method = RequestMethod.POST)
	List<Satellite> getData(@RequestBody FilterData filterData) {
		System.out.println(filterData + "filterdta");
		 
		/*
		 * satelliteRepository.getFilteredData(filterData.getLocalIdFrom(),filterData.
		 * getLocalIdTo(),
		 * filterData.getSatelite(),filterData.getSensors(),filterData.getDateOfPassFrom
		 * (),filterData.getDateOfPassTo(),filterData.getDateOfPassFrom(),filterData.
		 * getDateOfPassTo() ,filterData.getRowFrom(),filterData.getPathTo());
		 */
		// EntityManager em = getEntityManager();
		 
		 CriteriaBuilder cb = entityManager.getCriteriaBuilder();
	        
	    
	    CriteriaQuery<Satellite> cq = cb.createQuery(Satellite.class);
	 
	    Root<Satellite> satellite = cq.from(Satellite.class);
	    List<Predicate> predicates = new ArrayList<>();
	    
	   
		 
		  
		 
	    if ( !filterData.getSatelite().equals("Choose one")) {
	        predicates.add(cb.equal(satellite.get("satelite"),  filterData.getSatelite()));
	    }
	    if (! filterData.getSensors().equals("Choose one")) {
	        predicates.add(cb.equal(satellite.get("sansor"),  filterData.getSensors()));
	    }
//	    if ( filterData.getLocalIdFrom() != null && filterData.getLocalIdTo() != null) {
//	        predicates.add(cb.between(satellite.get("localcd"),filterData.getLocalIdFrom() ,filterData.getLocalIdTo()));
//	    }
	    if ( !filterData.getDateOfPassFrom().toString().equals("1111-01-01") && (!filterData.getDateOfPassTo().toString().equals("1111-01-01"))) {
	        predicates.add(cb.between(satellite.get("date"),filterData.getDateOfPassFrom() ,filterData.getDateOfPassTo()));
	    }
	    
//	    if ( filterData.getDateOfPassFrom() != null && filterData.getDateOfPassTo() != null) {
//	        predicates.add(cb.between(satellite.get("date"),filterData.getDateOfPassFrom() ,filterData.getDateOfPassTo()));
//	    }
	    try
	    {
//	    if ( !filterData.getPathFrom().toString().equals(null) && (!filterData.getPathTo().toString().equals(null)) ){
//	        predicates.add(cb.between(satellite.get("path"),filterData.getPathFrom() ,filterData.getPathTo()));
//	    } 
	    	
	    	 if ( filterData.getPathFrom() != null && filterData.getPathTo() != null) {
	 	        predicates.add(cb.between(satellite.get("path"),filterData.getPathFrom() ,filterData.getPathTo()));
	 	    }
	    	 
	    	 if ( filterData.getRowFrom() != null && filterData.getRowTo() != null) {
		 	        predicates.add(cb.between(satellite.get("row"),filterData.getRowFrom() ,filterData.getRowTo()));
		 	    }
	    	
	    	
	    }
	    
	    
	    catch (Exception e) {
			// TODO: handle exception
		}
	   
	   cq.select(satellite)
            .where(cb.and(predicates.toArray(new Predicate[predicates.size()])));
 
        return entityManager.createQuery(cq)
            .getResultList();
	    
	    
	
	}
	
	@RequestMapping(value = "findAllold", method = RequestMethod.GET)
	public ResponseEntity<Iterable<Satellite>> findAll() {
		try {
			System.out.println("findall");
			
			
			
			return new ResponseEntity<Iterable<Satellite>>(satelliteRepository.findAll(), HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<Iterable<Satellite>>(HttpStatus.BAD_REQUEST);
		}
	}
	@RequestMapping(path = "/findAll", method = RequestMethod.GET)

	public List<Satellite> findAllgeom() {
		System.out.println(satelliteRepository.findAll());
		return satelliteRepository.findAll();
	}
	
	@GetMapping("/getDemoData")
	public String getDemoData() {
		
		return satelliteRepository.getDummyData(1818 ,"");
		
	}
	
}
