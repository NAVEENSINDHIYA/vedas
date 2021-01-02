///**
// * Elements that make up the popup.
// */
//var container = document.getElementById('popup');
//var content = document.getElementById('popup-content');
//var closer = document.getElementById('popup-closer');
//
///**
// * Create an overlay to anchor the popup to the map.
// */
//var overlay = new ol.Overlay({
//  element: container,
//  autoPan: true,
//  autoPanAnimation: {
//    duration: 250,
//  },
//});
//
///**
// * Add a click handler to hide the popup.
// * @return {boolean} Don't follow the href.
// */
//closer.onclick = function () {
//  overlay.setPosition(undefined);
//  closer.blur();
//  return false;
//};
//
//window.onload=init;
//

/**
 * Elements that make up the popup.
 */
var container = document.getElementById('popup');
var content = document.getElementById('popup-content');
var closer = document.getElementById('popup-closer');

/**
 * Create an overlay to anchor the popup to the map.
 */
var overlay = new ol.Overlay({
  element: container,
  autoPan: true,
  autoPanAnimation: {
    duration: 250,
  },
});

/**
 * Add a click handler to hide the popup.
 * @return {boolean} Don't follow the href.
 */
closer.onclick = function () {
  overlay.setPosition(undefined);
  closer.blur();
  return false;
};

window.onload=init;


function init()
{

let india=[ 81.191694, 23.8086 ];
//let jalandhar=[75.57917,31.32556];
var map = new ol.Map({
	overlays: [overlay],
        target: 'target-map',
       

      
        view: new ol.View({
        	center : ol.proj.transform(india, 'EPSG:4326','EPSG:3857'),
        	zoom:4.5,
		//	zoom :10,
			minZoom:4,
			maxZoom: 17
        }),
        layers:[
           CommonlayersGroup,indianMapLayersGroup,
           transportLayerGroup,IdentifyLayerGroup,satelliteGroup
    	],
      controls:   ol.control.defaults({
        zoom: false,
        attribution: false,
        rotate: false
      }).extend([]),
     // new ol.control.FullScreen()
    

      });
    //  var olGM = new olgm.OLGoogleMaps({map: map});
//var gmap = olGM.getGoogleMapsMap();
//CommonlayersGroup,
measure(map);
controllers(map);
navigation(map);
switchlayers(map);
getMousePosition(map);
scaleline(map);
exportpdf(map);
identify(map);
addGeom(map);





}

//
//function init()
//{
//
//var map = new ol.Map({
//	overlays: [overlay],
//        target: 'target-map',
//       
//        view: new ol.View({
//        	center : ol.proj.transform([ 81.191694, 23.8086 ], 'EPSG:4326','EPSG:3857'),
//			zoom :4.5,
//			minZoom:4,
//			maxZoom: 17
//        }),
//        layers:[
//           CommonlayersGroup,indianMapLayersGroup,
//           transportLayerGroup,IdentifyLayerGroup,satelliteGroup,
//    	],
//      controls:   ol.control.defaults({
//        zoom: true,
//        attribution: false,
//        rotate: false
//      }).extend([]),
//     // new ol.control.FullScreen()
//    
//
//      });
//    //  var olGM = new olgm.OLGoogleMaps({map: map});
////var gmap = olGM.getGoogleMapsMap();
////CommonlayersGroup,
//measure(map);
//controllers(map);
//navigation(map);
//switchlayers(map);
//getMousePosition(map);
//scaleline(map);
//exportpdf(map);
//identify(map);
//addGeom(map);
//
//
//
//
//
//}
