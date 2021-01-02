package com.GisSatellite.Server.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.GisSatellite.Server.Entities.Attribute;



public interface AttributeRepository extends JpaRepository<Attribute, Integer> {
	
	public Attribute findById(int id);

}
