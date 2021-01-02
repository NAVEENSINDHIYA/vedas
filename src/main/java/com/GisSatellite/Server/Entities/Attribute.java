package com.GisSatellite.Server.Entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.swing.JOptionPane;


@Entity
@Table(name="attribute")
public class Attribute {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	private int id_from;
	private int id_to;
	private String satellite;
	private String sansor;
	private Date date_from;
	private Date date_to;
	private int path_from;
	private int path_to;
	private int row_from;
	private int row_to;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_from() {
		return id_from;
	}
	public void setId_from(int id_from) {
		this.id_from = id_from;
	}
	public int getId_to() {
		return id_to;
	}
	public void setId_to(int id_to) {
		this.id_to = id_to;
	}
	public String getSatellite() {
		return satellite;
	}
	public void setSatellite(String satellite) {
		this.satellite = satellite;
	}
	public String getSansor() {
		return sansor;
	}
	public void setSansor(String sansor) {
		this.sansor = sansor;
	}
	public Date getDate_from() {
		return date_from;
	}
	public void setDate_from(Date date_from) {
		this.date_from = date_from;
	}
	public Date getDate_to() {
		return date_to;
	}
	public void setDate_to(Date date_to) {
		this.date_to = date_to;
	}
	public int getPath_from() {
		return path_from;
	}
	public void setPath_from(int path_from) {
		this.path_from = path_from;
	}
	public int getPath_to() {
		return path_to;
	}
	public void setPath_to(int path_to) {
		this.path_to = path_to;
	}
	public int getRow_from() {
		return row_from;
	}
	public void setRow_from(int row_from) {
		this.row_from = row_from;
	}
	public int getRow_to() {
		return row_to;
	}
	public void setRow_to(int row_to) {
		this.row_to = row_to;
	}
	
}