//var wmsurl='https://gis.ncog.gov.in/CoronaAPI/CoronaWMS';
var wmsurl='https://gis.ncog.gov.in/GISWeb/wms'
var IdentifyLayerGroup = new ol.layer.Group({
			layers : [
				
				
				new ol.layer.Tile({
					source : new ol.source.TileWMS({
						url :wmsurl,// 'http://192.168.1.89:8090/geoserver/cite/wms',
						crossOrigin: 'anonymous',
						params : {
							'LAYERS' : 'india_blockstation_basemap',
							format_options:'dpi:180',
							version : '1.1.1',
							STYLES:''
						}
					}),
					showLegend: true,
					//maxResolution : 256,
					name : 'Rail',
					visible:false
				}),
				
			          
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :wmsurl,// 'http://192.168.1.89:8090/geoserver/cite/wms',
					crossOrigin: 'anonymous',
					params : {
						'LAYERS' : 'india_airport_location_basemap',
						format_options:'dpi:180',
						version : '1.1.1',
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Airport',
				visible:false
			}),
			
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :wmsurl,// 'http://192.168.1.89:8090/geoserver/cite/wms',
					crossOrigin: 'anonymous',
					params : {
						'LAYERS' : 'india_nhai',
						format_options:'dpi:180',
						version : '1.1.1',
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'National Highway',
				visible:false
			}),
			
			
			new ol.layer.Tile({
				source : new ol.source.TileWMS({
					url :wmsurl,// 'http://192.168.1.89:8090/geoserver/cite/wms',
					crossOrigin: 'anonymous',
					params : {
						'LAYERS' : 'monument_final_tbl',
						format_options:'dpi:180',
						version : '1.1.1',
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name : 'Monument',
				visible:false
			}),
			
			

			],
			name : 'Identify'
		});
