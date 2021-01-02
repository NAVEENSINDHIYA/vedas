package com.GisSatellite.Server.Entities;

import java.sql.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.locationtech.jts.geom.Geometry;

import com.fasterxml.jackson.annotation.JsonIgnore;


/*import com.vividsolutions.jts.geom.Geometry;
import com.vividsolutions.jts.geom.Polygon;*/




@Entity

@Table(name = "satellite_data_5")
public class Satellite {
		
	@Id
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	public long id;

	private String wktgeom;
	
    		@JsonIgnore
			private Geometry addgeom;
			
			
			public String getWktgeom() {
				return wktgeom;
			}
			public void setWktgeom(String wktgeom) {
				this.wktgeom = wktgeom;
			}
			
			public Geometry getAddgeom() {
				return addgeom;
			}
			public void setAddgeom(Geometry addgeom) {
				this.addgeom = addgeom;
			}
			public String getGeom_type() {
				return geom_type;
			}
			public void setGeom_type(String geom_type) {
				this.geom_type = geom_type;
			}

		private Double path;
		private Double row;
		
		private Date date;
		private String time;
		private String geom_type;
		
		private String satelite;
		
		private String sansor;
		private String band;
		private String gain_no;
		private Double pixel;
		private Double line;
		private Double pixel_size_x;
		private Double pixel_size_y;
		private Double center_lat;
		private Double center_long;
		private Double ullat;
		private Double ullong;
		private Double urlat;
		private Double urlong;
		private Double lllat;
		private Double lllong;
		private Double lrlat;
		private Double lrlong;
		private Double sunangle_azi;
		private Double sunangle_ele;
		
	//	private Double localcd;
		private String layername;
		private String image1;
//		private String image2;
//		private String image3;
//		
		
		public long getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public Double getPath() {
			return path;
		}
		public void setPath(Double path) {
			this.path = path;
		}
		public Double getRow() {
			return row;
		}
		public void setRow(Double row) {
			this.row = row;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public String getTime() {
			return time;
		}
		public void setTime(String time) {
			this.time = time;
		}
		public String getSatelite() {
			return satelite;
		}
		public void setSatelite(String satelite) {
			this.satelite = satelite;
		}
		public String getSansor() {
			return sansor;
		}
		public void setSansor(String sansor) {
			this.sansor = sansor;
		}
		public String getBand() {
			return band;
		}
		public void setBand(String band) {
			this.band = band;
		}
		
		public String getGain_no() {
			return gain_no;
		}
		public void setGain_no(String gain_no) {
			this.gain_no = gain_no;
		}
		public Double getPixel() {
			return pixel;
		}
		public void setPixel(Double pixel) {
			this.pixel = pixel;
		}
		public Double getLine() {
			return line;
		}
		public void setLine(Double line) {
			this.line = line;
		}
		public Double getPixel_size_x() {
			return pixel_size_x;
		}
		public void setPixel_size_x(Double pixel_size_x) {
			this.pixel_size_x = pixel_size_x;
		}
		public Double getPixel_size_y() {
			return pixel_size_y;
		}
		public void setPixel_size_y(Double pixel_size_y) {
			this.pixel_size_y = pixel_size_y;
		}
		public Double getCenter_lat() {
			return center_lat;
		}
		public void setCenter_lat(Double center_lat) {
			this.center_lat = center_lat;
		}
		public Double getCenter_long() {
			return center_long;
		}
		public void setCenter_long(Double center_long) {
			this.center_long = center_long;
		}
		public Double getUllat() {
			return ullat;
		}
		public void setUllat(Double ullat) {
			this.ullat = ullat;
		}
		public Double getUllong() {
			return ullong;
		}
		public void setUllong(Double ullong) {
			this.ullong = ullong;
		}
		public Double getUrlat() {
			return urlat;
		}
		public void setUrlat(Double urlat) {
			this.urlat = urlat;
		}
		public Double getUrlong() {
			return urlong;
		}
		public void setUrlong(Double urlong) {
			this.urlong = urlong;
		}
		public Double getLllat() {
			return lllat;
		}
		public void setLllat(Double lllat) {
			this.lllat = lllat;
		}
		public Double getLllong() {
			return lllong;
		}
		public void setLllong(Double lllong) {
			this.lllong = lllong;
		}
		public Double getLrlat() {
			return lrlat;
		}
		public void setLrlat(Double lrlat) {
			this.lrlat = lrlat;
		}
		public Double getLrlong() {
			return lrlong;
		}
		public void setLrlong(Double lrlong) {
			this.lrlong = lrlong;
		}
		public Double getSunangle_azi() {
			return sunangle_azi;
		}
		public void setSunangle_azi(Double sunangle_azi) {
			this.sunangle_azi = sunangle_azi;
		}
		public Double getSunangle_ele() {
			return sunangle_ele;
		}
		public void setSunangle_ele(Double sunangle_ele) {
			this.sunangle_ele = sunangle_ele;
		}
		public String getLayername() {
			return layername;
		}
		public void setLayername(String layername) {
			this.layername = layername;
		}
		public void setId(long id) {
			this.id = id;
		}
//		
//		public Double getLocalcd() {
//			return localcd;
//		}
//		public void setLocalcd(Double localcd) {
//			this.localcd = localcd;
//		}
//		
		public String getImage1() {
			return image1;
		}
		public void setImage1(String image1) {
			this.image1 = image1;
		}
//		public String getImage2() {
//			return image2;
//		}
//		public void setImage2(String image2) {
//			this.image2 = image2;
//		}
//		public String getImage3() {
//			return image3;
//		}
//		public void setImage3(String image3) {
//			this.image3 = image3;
//		}
		@Override
		public String toString() {
			return "Satellite [id=" + id + ", wktgeom=" + wktgeom + ", addgeom=" + addgeom + ", path=" + path + ", row="
					+ row + ", date=" + date + ", time=" + time + ", geom_type=" + geom_type + ", satelite=" + satelite
					+ ", sansor=" + sansor + ", band=" + band + ", gain_no=" + gain_no + ", pixel=" + pixel + ", line="
					+ line + ", pixel_size_x=" + pixel_size_x + ", pixel_size_y=" + pixel_size_y + ", center_lat="
					+ center_lat + ", center_long=" + center_long + ", ullat=" + ullat + ", ullong=" + ullong
					+ ", urlat=" + urlat + ", urlong=" + urlong + ", lllat=" + lllat + ", lllong=" + lllong + ", lrlat="
					+ lrlat + ", lrlong=" + lrlong + ", sunangle_azi=" + sunangle_azi + ", sunangle_ele=" + sunangle_ele
					+ ", layername=" + layername + ", image1=" + image1 + "]";
		}
		
		
		
		
		
		
		
		
	
		
		
		
}
