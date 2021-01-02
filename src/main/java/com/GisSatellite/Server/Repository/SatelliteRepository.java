package com.GisSatellite.Server.Repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.GisSatellite.Server.Entities.FilterData;
import com.GisSatellite.Server.Entities.Satellite;



public interface SatelliteRepository extends JpaRepository<Satellite,Long> {

//	
//	@Query("SELECT t FROM Satellite_data t WHERE t.satellite = 'CARTOSAT-1'")
//	void getFilteredData(FilterData filterData);
	
//	@Query(value = "UPDATE satellite_data2 SET geom = ST_POINT(center_lat, center_long)",nativeQuery = true)
//	Satellite addgeom();
//	
//	@Query(value="select * from register where email=?1 and password=?2",nativeQuery= true)
//	RegisterModel getRegister(String email, String password);
	
	
	
	
	
	@Query("from Satellite where id = ?1")
	
	public List<Satellite> search(String keyword);
	
	List<Satellite> findAll();







	
//	List<Satellite> getFilteredData(String satelite,String sensors,String localIdFrom,String localIdTo);
	
	@Query(value="select * from satellite_data WHERE satelite= ?1 AND sansor= ?2 AND localcd BETWEEN (?3 OR ?3 is null) AND ?4 AND date BETWEEN ?5 AND ?6  AND path BETWEEN ?7 AND ?8  AND row BETWEEN ?9 AND ?10",nativeQuery = true)
	public List<Satellite> getFilteredData(String satelite, String sensors, Integer integer5, Integer integer6,
			Date date, Date date2 , Integer integer,Integer integer2,Integer integer3,Integer integer4,Satellite st);
	



	

	
	@Query(value="select * from satellite_data where (localcd = ?1)" +
	        " AND (satelite = ?2 OR satelite is null)",nativeQuery = true)
	public String getDummyData(int i, String string);
	





	

//	String getFilteredData(String localIdFrom, String localIdTo, String satelite, String sensors, String dateOfPassFrom,
//			String dataOfPassTo, String dateOfPassFrom2, String dataOfPassTo2, String rowFrom, String pathTo); 
    
	
	
	
	
	
	
//	
//	@Query("from Satellite WHERE id between ?1 and ?2")
//	
//	
//    public List<Satellite> search1(String id);
//    
//    List<Satellite> findAllById(String id);
}
