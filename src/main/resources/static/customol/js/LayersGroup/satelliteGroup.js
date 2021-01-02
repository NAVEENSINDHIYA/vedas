//var wmsurl='https://gis.ncog.gov.in/CoronaAPI/CoronaWMS';
//var wmsurl='https://gis.ncog.gov.in/GISWeb/wms'
var wmsurl162='https://gis.ncog.gov.in/GeoserverWebAPI/wms62'
//function getallid(ids)
{

var satelliteGroup = new ol.layer.Group({
			layers : [
				
			    
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :'http://192.168.1.196:8080/geoserver/cite/wms',//'http://10.247.102.63:8080/geoserver/cite/wms',
					//crossOrigin: 'anonymous',
					params : {
						'LAYERS' : 'ProjectRaster1',
						format_options:'dpi:180',
						version : '1.1.1',
					//	whereclause:
					//CQL_FILTER : ids,
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Satellite_data1',
				visible:true
			}),
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :wmsurl162,//'http://10.247.102.63:8080/geoserver/cite/wms',
					crossOrigin: 'anonymous',
					params : {
						'LAYERS' : '106_rabi2016',
						format_options:'dpi:180',
						version : '1.1.1',
					//	whereclause:
					//CQL_FILTER : ids,
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Satellite_data2',
				visible:true
			}),
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :'http://localhost:8999/geoserver/cite/wms',//'http://10.247.102.63:8080/geoserver/cite/wms',
					//crossOrigin: 'anonymous',
					params : {
						'LAYERS' : 'BANDP_01',
						format_options:'dpi:180',
						version : '1.1.1',
					//	whereclause:
					//CQL_FILTER : ids,
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Satellite_data1',
				visible:true
			}),
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :'http://localhost:8999/geoserver/cite/wms',//'http://10.247.102.63:8080/geoserver/cite/wms',
					//crossOrigin: 'anonymous',
					params : {
						'LAYERS' : 'L1C_T42QWK_A028216_20201116T055120',
						format_options:'dpi:180',
						version : '1.1.1',
					//	whereclause:
					//CQL_FILTER : ids,
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Satellite_data2',
				visible:true
			}),
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :wmsurl162,//'http://10.247.102.63:8080/geoserver/cite/wms',
					crossOrigin: 'anonymous',
					params : {
						'LAYERS' : '128_post',
						format_options:'dpi:180',
						version : '1.1.1',
					//	whereclause:
					//CQL_FILTER : ids,
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Satellite_data4',
				visible:true
			}),
			
			
			
			],
			name : 'satellite'
		});




	
		}
