<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
 <!DOCTYPE html>
<html lang="en">
<head>
	<title>Satellite Form</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->



<script type="text/javascript">
$(document).ready(function() {
	if(window.opener != null){
		var urlat = window.opener.bufferurlat;
		 var urlong = window.opener.bufferurlong;
		 var ullat = window.opener.bufferullat;
		 var ullong = window.opener.bufferullong;
		 var lllat = window.opener.bufferlllat;
		 var lllong = window.opener.bufferlllong;
		 var lrlat = window.opener.bufferlrlat;
		 var lrlong = window.opener.bufferlrlong;

		 // 		 var state =window.opener.state_id;
// 		 var dist =window.opener.dist_id;
// 		 var block =window.opener.block_id;
// 		var vill =window.opener.vill_id;
		// console.log("lat"+lat);
		// 		alert(state+"  state  "+dist+"   dist   "+block+"  block   "+vill+"   vill  "  +GeomType);
		// console.log("lat"+lat);
		//alert("point"+point);

// 	FOR POINT
// 		 var point = window.opener.addpoint;
// 		 var   GeomType = window.opener.geomtype;
		
// 		document.getElementById("addPoint").value = point; 
// 		document.getElementById("geomType").value = GeomType;


// FOR POLYGON
 var polygon = window.opener.addpolygon;
		 var   GeomType = window.opener.geomtype;
		
		document.getElementById("addPolygon").value = polygon; 
		document.getElementById("geomType").value = GeomType;

		

		document.getElementById("ullat").value = ullat;
	    document.getElementById("ullong").value = ullong;
	    document.getElementById("lllat").value = lllat;
	    document.getElementById("lllong").value = lllong;
	    document.getElementById("lrlat").value = lrlat;
	    document.getElementById("lrlong").value = lrlong;
	    document.getElementById("urlat").value = urlat;
	    document.getElementById("urlong").value = urlong;
	 

		 
// 		 document.getElementById("stateId_Hidden").value = state;
// 		 document.getElementById("districtId_Hidden").value = dist;
// 		 document.getElementById("subDistrictId_Hidden").value = block;
// 		 document.getElementById("villageId_Hidden").value = vill;
// 	//alert("state...."+dist+"......"+block+"......"+vill)
// 	 loadState(state);
// 	 loadBlankVillage();
		}
	
// 	var msg = "" ;
// 	msg = document.getElementById("msg").value;		
// 	if(msg != null){
// 		//alert(msg);
// 		window.close();
		
// 	} 
	
	

});

</script>
 



</head>
<body>
					<!-- for bg Image use this tag-->
	<!--div class="container-contact100" style="background-image: url('images/bg-01.jpg');"-->
	
					<!-- for White bg use this tag-->
	<!--div class="container-contact100" style="background-color: #ffffff"-->
	
					<!-- for Black bg use this tag -->
	<div class="container-contact100" style="background-color: #586266">
		<div class="wrap-contact100 ">
		
			<form class="contact100-form " action="/success" method = "post" enctype="multipart/form-data">
		
				<span class="contact100-form-title" >
					Satellite Form
				</span>
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input" >
				
					<span class="label-input100">Satellite :</span>	
					       <select class="input100" type="text" name="satelite" id="satelite">
    
     <option value="CARTOSAT-1">CARTOSAT-1</option>
      <option value="CARTOSAT-2">CARTOSAT-2</option>
	  <option value="CARTOSAT-2D">CARTOSAT-2D</option>
      <option value="CARTOSAT-2E">CARTOSAT-2E</option>
      <option value="IKONOS">IKONOS</option>
      <option value="IRS-1A">IRS-1A</option>
      <option value="IRS-1B">IRS-1B</option>
      <option value="IRS-1C">IRS-1C</option>
      <option value="IRS-1D">IRS-1D</option>
       <option value="IRS-P3">IRS-P3</option>
        <option value="IRS-P4">IRS-P4</option>
      <option value="IRS-P6">IRS-P6</option>
      <option value="IRS-R2">IRS-R2</option>
       <option value="IRS-R2A">IRS-R2A</option>
        <option value="OCEANSAT-2">OCEANSAT-2</option>
         <option value="RISAT-1">RISAT-1</option>
    
    
  </select>				</div>
				
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Sensor :</span>
					<select class="input100" type="text" id="sansor"  name="sansor">
    					  	<option value="AW">AW</option>
      						<option value="L1">L1</option>
	  						<option value="L2">L2</option>
      						<option value="L3">L3</option>
      						<option value="L4">L4</option>
      						<option value="MX">MX</option>
      						<option value="OCM">OCM</option>
      						<option value="PAN">PAN</option>
      						<option value="PAN/MSI">PAN/MSI</option>
      						<option value="SAR">SAR</option>
      						<option value="WIF">WIF</option>
  					</select>
				</div>
               <div class="wrap-input100 rs1-wrap-input100 validate-input"> 
  					<span class="label-input100">Date :</span>	 
  					<input class="input100" type="date" id="date" name="date" required>  
  				</div>  
	
				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Time :</span>	
					<input class="input100" type="time" id="time" name="time">
				</div>
		
				<div class="wrap-input100 rs1-wrap-input100 validate-input" >
					<span class="label-input100">Path :</span>	
					<input class="input100" type="text" id="path" name="path" placeholder="Path"></input>
				</div>
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Row :</span>	
					<input class="input100" type="text" id="row" name="row" placeholder="Row"></input>
				</div>
				
 				
				
				
				
	
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input" >
					<span class="label-input100">Band :</span>	
					<input class="input100" type="text" id="band" name="band" placeholder="Band"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Gain No :</span>	
					<input class="input100" type="text" id="gain_no"  name="gain_no" placeholder="Gain"/>
				</div>
				<div  class="wrap-input100 validate-input"></div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">                  
					<span class="label-input100">I/P Pixel :</span>	
					<input class="input100" type="text" id="pixel"  name="pixel" placeholder="I/P"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">I/P Line :</span>	
					<input class="input100" type="text" id="line"  name="line" placeholder="line"/>
				</div>
					
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Pixel size x :</span>	
					<input class="input100" type="text" id="pixel_size_x" name="pixel_size_x" placeholder="size x"/>
				</div>
					
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Pixel size y :</span>	
					<input class="input100" type="text" id="pixel_size_y" name="pixel_size_y" placeholder="size y"/>
				</div>
				
<!-- 				<div class="container-contact100-form-btn"> -->
<!-- 					<div class="wrap-input100" align="center">Draw Area for Which NOC is required : -->
					
<!-- 					</div> -->
				
<!-- 					<div class="wrap-contact100-form-btn"> -->
<!-- 						<div class="contact100-form-bgbtn"></div> -->
						
<!-- 						<button class="contact100-form-btn" type="button" id="" name=""  onclick="mapLatLonDis();"> -->
<!-- 							Draw -->
<!-- 						</button> -->
						
<!-- 					</div> -->
<!-- 					<br>  <label id ="latlon_geom" for="text-input" class=" form-control-label"></label> -->
<!-- 				</div> -->
				
				
				
				<div class="wrap-input100"></div>
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Center latitude :</span>	
					<input class="input100" type="text" id="center_lat"  name="center_lat" placeholder="centre lat"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Center longitude :</span>	
					<input class="input100" type="text" id="center_long"  name="center_long" placeholder="centre long"/>
				</div>
				
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Upper Left Latitude :</span>	
					<input class="input100" type="text" id="ullat"  name="ullat" placeholder="Ul lat"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Upper Left Longitude :</span>	
					<input class="input100" type="text" id="ullong"  name="ullong" placeholder="Ul long"/>
				</div>
				
				<div class="wrap-input100 validate-input" ></div>
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Upper Right Latitude :</span>	
					<input class="input100" type="text" id="urlat"  name="urlat" placeholder="Ur lat"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Upper Right Longitude :</span>	
					<input class="input100" type="text" id="urlong"  name="urlong" placeholder="Ur long"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Lower Left Latitude :</span>	
					<input class="input100" type="text" id="lllat"  name="lllat" placeholder="LL lat"/>
				</div>
				
				<div  class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Lower Left Longitude :</span>	
					<input class="input100" type="text" id="lllong" name="lllong" placeholder="LL long"/>
				</div>
				
				<div class="wrap-input100 validate-input" ></div>
				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Lower Right Latitude :</span>	
					<input class="input100" type="text" id="lrlat" name="lrlat" placeholder="Lr lat"/>
				</div>
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Lower Right Longitude :</span>	
					<input class="input100" type="text" id="lrlong"  name="lrlong" placeholder="Lr long"/>
				</div>
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input">			
					<span class="label-input100">Sun Angle(Azi) :</span>	
					<input class="input100" type="text" id="sunangle_azi"  name="sunangle_azi" placeholder="Sun Angle(azi)"/>
				</div>
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Sun Angle(Ele) :</span>	
					<input class="input100" type="text" id="sunangle_ele" name="sunangle_ele" placeholder="Sun Angle(ele)"/>
				</div>
				
<!-- 				<div class="wrap-input100 rs1-wrap-input100 validate-input" > -->
<!-- 				<span class="label-input100">Local id :</span>	 -->
<!-- 					<input class="input100" type="text" id="localcd" name="localcd" placeholder="Local id number.."/> -->
<!-- 				</div> -->
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input" >
				<span class="label-input100">Layer Name :</span>	
					<input class="input100" type="text" id="layername" name="layername" placeholder="Layer name"/>
				</div>
					
					
					
					<div class="wrap-input100 rs1-wrap-input100">
							
								<span class="label-input100">Satellite
									Image :</span><br><br>
								<input type="file" id="image1" path="image1" name="image1"
									accept=".png, .jpg, .jpeg" class="label-input100"
									>
							</div>
							
<!-- 						onchange="return Validateownerphto(this);" 


							<div class="wrap-input100 rs1-wrap-input100 validate-input"><br><br>
								<input type="file" id="image2" path="image2" name="image2"
									accept=".png, .jpg, .jpeg" class="label-input100"
									>
							</div>
							
							<div class="wrap-input100 rs1-wrap-input100 validate-input">
								<input type="file" id="image3" path="image3" name="image3"
									accept=".png, .jpg, .jpeg" class="label-input100"
									>
							</div>  -->
			
						
						
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn" type="submit">
							Submit
						</button>
					</div>
				</div>
			</form>
		</div>
		
	
		<span class="contact100-more">
				
		</span>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<!-- <script type="text/javascript"> 


 function Validateownerphto(e) {
 // 	 alert("HIiiiiiiiii"+e)
 	    var t = e.value;
 	    if ("" != t) {
 	        var n = t.substring(t.lastIndexOf(".") + 1).toLowerCase();
 	        if((e.files[0].size / 1024) > 1000 ){
 	        	alert("Upload file size upto 1 MB. ");
 	        	e.value = "";
 	        	return false;
 	        }else{
 	            return ("jpeg" == n || "JPEG" == n ||"jpg" == n || "JPG" == n ||"png" == n || "PNG" == n ) ? "" : (alert("Only JPEG / JPG/PNG file types allows."), e.value = "", !1)
 	        }

 	    } 
	    return alert("Please Upload file"), !0
 	}

</script> -->

<script src="customol/js/geomForm.js"></script>
<script src="customol/js/mod.js"></script>
<script src="customol/js/editPower.js"></script>
<script src="customol/js/buttons.js"></script>
</body>
</html>
