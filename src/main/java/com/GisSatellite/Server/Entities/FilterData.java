package com.GisSatellite.Server.Entities;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sun.istack.Nullable;

@JsonFormat(pattern="yyyy-MM-dd'T'HH:mm:ss")
public class FilterData {
	@Nullable
	private Integer localIdFrom;
	
	private Integer localIdTo;
	private String satelite;
	private String sensors; 
	
	private Date dateOfPassFrom;

	private Date dateOfPassTo;
	private Integer pathFrom;
	private Integer pathTo;
	private Integer rowFrom;
	private Integer rowTo;
	
	
	
	public Integer getLocalIdFrom() {
		return localIdFrom;
	}
	public void setLocalIdFrom(Integer localIdFrom) {
		this.localIdFrom = localIdFrom;
	}
	public Integer getLocalIdTo() {
		return localIdTo;
	}
	public void setLocalIdTo(Integer localIdTo) {
		this.localIdTo = localIdTo;
	}
	public String getSatelite() {
		return satelite;
	}
	public void setSatelite(String satelite) {
		this.satelite = satelite;
	}
	public String getSensors() {
		return sensors;
	}
	public void setSensors(String sensors) {
		this.sensors = sensors;
	}
	//@Column(name="dateOfPassFrom", columnDefinition="Date default '9999-09-09'")
	public Date getDateOfPassFrom() {
		return dateOfPassFrom;
	}
	public void setDateOfPassFrom(Date dateOfPassFrom) {
		System.out.println(dateOfPassFrom);
		this.dateOfPassFrom = dateOfPassFrom;
		System.out.println(dateOfPassFrom.getClass().getName());
	}
	//@Column(name="dateOfPassTo", columnDefinition="Date default '9999-09-09'")
	public Date getDateOfPassTo() {
		return dateOfPassTo;
	}
	public void setDateOfPassTo(Date dateOfPassTo) {
		this.dateOfPassTo = dateOfPassTo;
	}
	public Integer getPathFrom() {
		return pathFrom;
	}
	public void setPathFrom(Integer pathFrom) {
		this.pathFrom = pathFrom;
	}
	public Integer getPathTo() {
		return pathTo;
	}
	public void setPathTo(Integer pathTo) {
		this.pathTo = pathTo;
	}
	public Integer getRowFrom() {
		return rowFrom;
	}
	public void setRowFrom(Integer rowFrom) {
		this.rowFrom = rowFrom;
	}
	public Integer getRowTo() {
		return rowTo;
	}
	public void setRowTo(Integer rowTo) {
		this.rowTo = rowTo;
	}
	@Override
	public String toString() {
		return "FilterData [localIdFrom=" + localIdFrom + ", localIdTo=" + localIdTo + ", satelite=" + satelite
				+ ", sensors=" + sensors + ", dateOfPassFrom=" + dateOfPassFrom + ", dateOfPassTo=" + dateOfPassTo
				+ ", pathFrom=" + pathFrom + ", pathTo=" + pathTo + ", rowFrom=" + rowFrom + ", rowTo=" + rowTo + "]";
	}
	
	
	

}
