  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SDIS--Test</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="assets/css/icons.css" />
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">

 <link href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
 <link href="//cdn.datatables.net/buttons/1.6.4/css/buttons.dataTables.min.css">
 <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
 <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
 <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

  <link href="ol/ol.css" rel="stylesheet">
<link href="customol/css/customOlStyle.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  
  <!-- javascript  -->
  <script src="jquery-3.5.1.min.js"></script>
  <script src="customol/js/identify.js"></script> 
  <script src="customol/js/LayersGroup/commonlayersGroup.js"></script>
  
 <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <link href="vendor/jquery/multiselect.js">
 </head>
<style>
tfoot input {
       
        display: table-row-group;
       
    }
</style>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">
	 
	   
	  
	  <img src="images/bisag_logo.png"  style="width:130px; height:130px; margin-left:60px;padding-top:2px; padding-bottom:25px;">
	  
	  
	  
	   </div>
      <div class="list-group list-group-flush">
        <!-- <a href="#" class="list-group-item list-group-item-action bg-light nav-item dropdown nav-link dropdown-toggle">Optical</a>
		<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>  -->
			  <li class="nav-item dropdown list-group-item list-group-item-action bg-light nav-item dropdown nav-link">
             
             
             
             
<!--              <select class="custom-select mr-sm-2" id="inlineFormCustomSelect"> -->
<!--         <option selected>Choose...</opion> -->
<!--         <option value="1"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                 Optical -->
<!--               </a></option> -->
<!--         <option value="2"><a class="dropdown-item" href="#">Microwave</a></option> -->
        
<!--       </select> -->
           </li>
		<!-- <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
           
           
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
          </ul> -->
		
		<form id ="filterform">
		<div class="form-row align-items-center">
   
		<div style="border:2px solid black;margin-left:10px;width:300px;height:45px">
		
		<h5 style="margin-top:5px;margin-left:15px"><a href="#" class="" data-toggle="modal" data-target="#myModal" id="attri" onclick="myFunction1()">Attribute</a>
	
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		<a href="#" style="margin-top:5px" class="" id="attri2"onclick="myFunction2()">Spatial</a></h5>
		</div>
     
       <!--  <a href="#" class="list-group-item list-group-item-action bg-light">Events</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Status</a> -->
      </div>
     <div class="modal-body" id="attribute_filter" style="padding:0px;">
            
<!--       <div style="margin-top:10px;margin-left:5px;height:70px;width:300px;border:2px solid black"> -->
      
<!--       <h5 style="width:90px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Local ID</h5> -->
      <input style =" width:120px;margin-left:10px" name="localIdFrom"  id="localIdFrom" type="hidden"  placeholder="From" >
      
<!--     	<span>-</span> -->
	
      <input style =" width:120px;" id="localIdTo" name="localIdTo" type="hidden"   placeholder="To" >
<!--       </div> -->
    <div style="margin-top:10px;margin-left:5px;height:55px;width:300px;border:2px solid black">
      
      <h5 style="width:80px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Satellite</h5>
    
       <select name="satelite" id="satelite">
        <option selected disabled>Choose one</option>
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
 </select>
      
      </div>
         <div style="margin-top:10px;margin-left:5px;height:70px;width:300px;border:2px solid black">
      
      <h5 style="width:70px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Sensor</h5>
      
      
      <select name="sensors" id="sensors">
    <optgroup >
      <option selected disabled>Choose one</option>
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
    </optgroup>
    
  </select>
      </div>
	
	 <div style="margin-top:10px;margin-left:5px;height:90px;width:300px;border:2px solid black">
      
      <h5 style="width:120px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Date of Pass</h5>
      
      
     
		 
           <input name="dateOfPassFrom"  class ="text-w-align" placeholder="From" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="dateOfPassFrom" value="2020-12-01" >

		  		 
         	   <input name="dateOfPassTo"  class="text-w-align" placeholder="To" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="dateOfPassTo" value="2020-12-31" >
	
               </div>

<div style="margin-top:10px;margin-left:5px;height:70px;width:300px;border:2px solid black">
      
      <h5 style="width:50px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Path</h5>
      <input name="pathFrom" style =" width:120px;margin-left:10px" id="pathFrom" type="number"  placeholder="From">
      
    	<span>-</span>
	
	
      <input name="pathTo" style =" width:120px;" id="pathTo" type="number"   placeholder="To">
      </div>

	<div style="margin-top:10px;margin-left:5px;height:70px;width:300px;border:2px solid black">
      
      <h5 style="width:50px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Row</h5>
      <input name="rowFrom" style =" width:120px;margin-left:10px" id="rowFrom" type="number"  placeholder="From">
      
    	<span>-</span>
	
	
      <input name="rowTo" style =" width:120px;" id="rowTo" type="number"   placeholder="To">
      </div>
	 <div class="modal-footer">
    <!-- <input type="submit"  value="FILTER" > -->
    <button id="filter"  value="val_1" name="but1" class="btn btn-warning">Filter</button>
    <!-- <input value="Submit" type="submit" onclick="filterData()"> -->
	<button id="reset"  name="reset" onclick="resetForm()" class="btn btn-warning">Reset</button>
<!--         <input type="button" onclick="resetForm()" class="btn btn-warning" value="Reset form"> -->
      </div>

</form>
 <script>
            function resetForm() {
                        document.getElementById("filterform").reset();
                    }
</script>
</div> 
      <!-- attribute_filter2 select special type  -->
      
            <div class="modal-body" id="attribute_filter2" style="padding:0px;">
      
      <form id ="filterform1">
            
      <div style="margin-top:10px;margin-left:5px;height:55px;width:300px;border:2px solid black">
      
      <h5 style="width:180px;margin-top:-10px;margin-left:5px;background:#f8f9fa;">Select Special Type</h5>
      
      
    
       <select name="selectnone"  id="selectnone" onchange="changeFunc();">
    
    
      <option value="selectnone">Select None</option>
      <option value="city">City</option>
      <option value="point">Point</option>
	  <option value="administrator">Administrator Boundaries</option>
      <option value="rectangular">Rectangular Extent</option>
   
    
  </select>
      
    
      </div>
   
     <input style ="display:none;margin-top:10px;margin-left:80px;width:150px" id="cityname" type="text"   placeholder="city name" >
	
	 <div class="modal-footer">
	    <button class="btn btn-warning">Filter</button>
	  <button id="reset"  name="reset" onclick="resetForm1()" class="btn btn-warning">Reset</button>
        
      </div>

</form>

</div>

</div>
 </div>
    <!-- Page Content -->
    <div id="page-content-wrapper">

<!--       <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom"> -->
<!--         <button class="btn btn-primary" id="menu-toggle">Toggle Menu</button> -->

<!--         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--           <span class="navbar-toggler-icon"></span> -->
<!--         </button> -->


<!--       </nav> -->

      <div class="container-fluid">
        <h4 class="mt-4">Satellite Data Information System (SDIS 2.0)</h4>
         <!--<p>The starting state of the menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will change.</p>
        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>. The top navbar is optional, and just for demonstration. Just create an element with the <code>#menu-toggle</code> ID which will toggle the menu when clicked.</p>  -->
      </div>

      <div class="col-md-12">
        <div class="card-body ">
                        <div class="row">
                          <div class="col-md-1" style="max-width: 3%;position: absolute;left: 0px;z-index: 1000;">
                            <button class="btn btn-info btn-round btn-fab btn-sm" onclick="defaultmap()">
                          <i class="material-icons">language</i>
                        </button>	
                         <button class="btn btn-info btn-round btn-fab btn-sm" onclick="zoomIn()">
                          <i class="material-icons">add</i>
                        </button>
                        <button class="btn btn-info btn-round btn-fab btn-sm" onclick="zoomOut()">
                          <i class="material-icons">remove</i>
                        </button>
                        
                         <button class="btn btn-info btn-round btn-fab btn-sm" onclick="geolocation()">
                          <i class="material-icons">gps_fixed</i>
                        </button>
                         <button class="btn btn-info btn-round btn-fab btn-sm">
                          <i class="material-icons">view_list</i>
                        </button>
                         <button class="btn btn-info btn-round btn-fab btn-sm">
                          <i class="material-icons">fullscreen</i>
                        </button>
                     
                             
                          </div>
                          
                           <div class="" style="position: fixed;top: 150px;right: 0;width: 64px;background:rgba(0, 0, 0, .3);z-index: 1031;border-radius: 8px 0 0 8px;text-align: center;">
                <div class="dropdown show-dropdown">
                  <a href="#" id="show_hide">
                    <i class="material-icons">language </i>
                  </a>
                  </div>
                  </div>
       <div id="slidingDiv" style="position: absolute;top:150px;right: 60px;z-index:100;min-width: 500px;">
              
           <div class="col-md-12">
              <div class="card ">
               
                <div class="card-body">
                 
                
                  <div class="row">
                    
                    <div class="col-md-10">
 			 <div class="tab-content">
                          <div class="tab-pane active" id="link112">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Layer Groups:   <span id="groupscount"></span></h4>
                             
                              </div>
                           

 <div id="accordion" role="tablist">
 
 <div id="groups">

            </div>        
 
                  </div>
                          
                          </div>
                          
                          
                           <div class="tab-pane" id="link113">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Find near by position</h4>
                 
                              </div>
                                  First
                          
                          </div>
                          
                            <div class="tab-pane" id="link114">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Add Geom</h4>
                 
                              </div>
                                  First
                          
                          </div>
                          
                         
                          
                           <div class="tab-pane" id="link116">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Buffer</h4>
                 
                              </div>
                                  First
                          
                          </div>
                           <div class="tab-pane" id="link117">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Identify</h4>
                 
                              </div>
                                  <div id="idaccordionn" role="tablist">
 
                                   <div id="groupss">
                                     
                                   </div>        
                   
                 
                  </div>
                          
                          </div>
                          
                           <div class="tab-pane" id="link118">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Measure</h4>
                 
                              </div>
                                
                  
                   <div class="">
                 <ul class="nav nav-pills nav-pills-rose" role="tablist" style="padding-top: 5px;">
                    <li class="nav-item">
                      <a class="nav-link active" data-toggle="tab" href="#link1" role="tablist" onclick=selectedType('LineString') style="border-radius: 10px;padding: 2px 5px;">
                       <i class="material-icons" style="padding: 1px 0;">linear_scale</i> 
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#link2" role="tablist" onclick=selectedType('Polygon') style="border-radius: 10px;padding: 2px 5px;">
                         <i class="material-icons"style="padding: 1px 0;">square_foot</i> 
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#link3" role="tablist" onclick=selectedType('Circle') style="border-radius: 10px;padding: 2px 5px;">
                      
                          <i class="material-icons"style="padding: 1px 0;">  panorama_fish_eye</i> 
                      </a>
                    </li>
                  </ul>
                
                
                  <div class="tab-content tab-space">
                    <div class="tab-pane active" id="link1">
                    Click on the map to start measure distance<br>
                     Distance:<span id="distance"></span>                    </div>
                    <div class="tab-pane" id="link2">
                     Click on the map to start measure area<br>
                     Area:<span id="area"></span>
                    </div>
                    <div class="tab-pane" id="link3">
                    Click on the map to start measure radious<br>
                     Radious:<span id="radious"></span>
                    </div>
                  </div>
                </div>
                          
                          </div>
                          
                           <div class="tab-pane" id="link119">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Query Builder</h4>
                 
                              </div>
                                  First
                          
                          </div>
                          
                           <div class="tab-pane" id="link120">
                             <div class="card-header card-header card-header-rose">
                 
                               <h4 class="card-title">Print</h4>
                 
                              </div>
                                            <div class="col-lg-5 col-md-6 col-sm-3">
                                            
                                              <a id="export-png" class="btn btn-default"><i class="fa fa-download"></i> Download PNG</a>
    <a id="image-download" download="map.png"></a>
                                            
                          <select class="selectpicker" data-size="7" id="format" data-style="btn btn-primary btn-round" title="Single Select">
                            <option disabled selected>Page Size</option>
                            <option value="a0">A0 (slow)</option>
        <option value="a1">A1</option>
        <option value="a2">A2</option>
        <option value="a3">A3</option>
        <option value="a4" selected>A4</option>
        <option value="a5">A5 (fast)</option>
                          </select>
                        </div>
                        
                          <div class="col-lg-5 col-md-6 col-sm-3">
                      
                          <select class="selectpicker" data-size="7" id="resolution" data-style="btn btn-primary btn-round" title="Single Select">
                            <option disabled >Resolution</option>
                            <option value="72" selected>72 dpi (fast)</option>
        <option value="150">150 dpi</option>
        <option value="300">300 dpi (slow)</option>
                          </select>
                          
                        </div>
                           <div class="col-lg-5 col-md-6 col-sm-3">
                            <button class="btn btn-primary" id="export-pdf">Export PDF</button>
                           </div>
                         
                          
                          
                          
                          </div>
                          
                      
                      </div>
                    </div>
                    <div class="col-md-2">
                      <!--
                                color-classes: "nav-pills-primary", "nav-pills-info", "nav-pills-success", "nav-pills-warning","nav-pills-danger"
                            -->
                      <ul class="nav nav-pills nav-pills-rose nav-pills-icons flex-column" role="tablist">
                        <li class="nav-item" style="padding-bottom: 10px;">
                          <a class="nav-links active" data-toggle="tab" href="#link112" role="tablist">
                            <i class="material-icons">layers</i> 
                          </a>
                        </li>
                        
                        
                        
                       
                        
                        <li class="nav-item" style="padding-bottom: 10px;">
                          <a class="nav-links" data-toggle="tab" href="#link117" role="tablist">
                            <i class="material-icons">location_searching</i> 
                          </a>
                        </li>
                        
                         
                      </ul>
                    </div>
                  </div>
               </div>
                
              
              </div>
            </div>
               <input type="hidden" id="roleType">
              
              </div>
      
    
    		<div id="target-map" style="width: 100%; height: 530px;"></div>
			<div id="latlon" class="latlon"></div>
			<div id="scale" class="scale-line"></div>
			<div id="location"
				style="width: 24px; height: 24px; font-size: 24px;">
				<div id="popup" class="ol-popup">
					<a href="#" id="popup-closer" class="ol-popup-closer"></a>
					<div id="popup-content"></div>

				</div>
			</div>
			</div>
			</div>



    
          <div align="center" class="form-group col-md-12 paddint-top12">
      <div style="float:left">
   </div align="center" class="form-group col-md-12 paddint-top12">
    <a style="float:right" href="/satelliteform">Create New </a>
    </div>   
	
	 <div align="center" class="form-group col-md-12 paddint-top12">
  <table id="getASIReportList" class="table table-striped table-bordered" style="width: 100%; float:right">
   
  </table>
  </div>


	
<script type="text/javascript">
    function clearSearch() {
        window.location = "[[@{/}]]";
    }
</script>


</div>
	  
	  
	  
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
  function myFunction1() {
  var x = document.getElementById("attribute_filter");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
  
  </script>
<script>
  function myFunction2() {
  var x = document.getElementById("attribute_filter2");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
  
  </script>

<script>
$("#attri2").click(function(){
  $("#attribute_filter").hide();
});

</script>



<script>
$("#attri").click(function(){
  $("#attribute_filter2").hide();
});

</script>


<script type="text/javascript">
function changeFunc() {
var selectBox = document.getElementById("selectnone");
var selectedValue = selectBox.options[selectBox.selectedIndex].value;
if (selectedValue=="city"){
$('#cityname').show();
}
else {
alert("Error");
$('#cityname').hide();
}
}
</script>
<script>
 $(document).ready(function() {
 
 
 var role='${role}';
	 $("#roleType").val(role);
 
	 $("#slidingDiv").hide();
$('#show_hide').click(function () {
	
    $("#slidingDiv").toggle("'slide', {direction: 'right' }, 1000");
});
 });
</script>
		
<script>
div = document.getElementById('attribute_filter2')

//To hide
div.style.display="none";
</script>		


<script>
div = document.getElementById('for_city')

//To hide
//div.style.display="none";
</script>

 
</body>
<script src=//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js></script> 
<script>

//for filter code

$('#filter').click(function(e){
    e.preventDefault();
    
    
    var code={};
   code.localIdFrom=document.getElementById('localIdFrom').value;
 	code.localIdTo=document.getElementById('localIdTo').value;
  code.satelite=document.getElementById('satelite').value;
	code.sensors=document.getElementById('sensors').value;
  /* alert(document.getElementById('dateOfPassFrom').value + "datefrom"); */
  
  if(document.getElementById('dateOfPassFrom').value=='')
  {
    code.dateOfPassFrom=null;
    alert(code.dateOfPassFrom);
  }else{
	  code.dateOfPassFrom=document.getElementById('dateOfPassFrom').value;
  }
  if(document.getElementById('dateOfPassTo').value==''){
    
    code.dateOfPassTo=null;
  }else{
	  code.dateOfPassTo=document.getElementById('dateOfPassTo').value;
  }


	code.pathFrom=document.getElementById('pathFrom').value;
  code.pathTo=document.getElementById('pathTo').value;
	code.rowFrom=document.getElementById('rowFrom').value;
	code.rowTo=document.getElementById('rowTo').value;
	 var codobject=JSON.stringify(code);
   //alert(codobject);



    console.log(codobject)
    $.ajax({

        url:"getData",
        type:"POST",
        data:codobject,
        contentType:"application/json;charset=utf-8",
        dataType: 'json',
        success: function(data) {
          loadtable(data);
         
        },
        error : function(request, status, error) {
                                alert(error.toString)
							}

    })
   
  })
 //close filter code 
  
  

  $(document).ready(function(){
     
        $.ajax({
							url: "findAll", 
							type : 'GET',
							success : function(data) {
							loadtable(data);							
							},
							error : function(request, status, error) {
                                alert(error)
							}
					
       });


      })
      
      
    //for datatable code

       function loadtable(data){
	 console.log(data);
        if ( $.fn.DataTable.isDataTable( '#getASIReportList' ) ) {
         $("#getASIReportList").dataTable().fnDestroy();
          $('#getASIReportList').empty(); 
          }

       	
        var table=$('#getASIReportList').DataTable({
		pageLength : 5,
		dom: 'Bfrtip',
		 'processing': true,

		 'columnDefs': [{
            'targets': 0,
            'searchable': false,
            'orderable': false,
            'className': 'dt-body-center',
            
            'render': function (data, type, full, meta){
            	 
                var longlat='['+full.center_long+','+full.center_lat+']';  

                var lname='['+full.lllat+']';
                
            	 return '<input type="checkbox"  id="checkbox" onchange="Myzoom('+longlat+')"   name="'+lname+'" value="' + $('<div/>').text(data).html() + '">';

            	
            	
            },
           
         }],
         
        
         
    	
        buttons: [
            'pdf'
				
            
        ],
		 "data":data ,
		
		columns : [{
			title : '',
			data : ''
			
		},{
			title : 'Layer Name',
			data : 'layername'
		}, {
			title : 'Satellite',
			data : 'satelite'
		}, {
			title : 'Sensor',
			data : 'sansor'
		},{
        	title: 'Date Of Pass',
       	    data :'date'
    }, {
			title : 'Path',
			data : 'path'
		}, {
			title : 'Row',
			data : 'row',
			
		}, {
			title : 'Center latitude',
			data : 'center_lat',
			
		},{
			title : 'Center longitude',
			data : 'center_long',
			
		}
	
		  ]
    
	});
        
       

       }
//close datatable



function Myzoom(longlat)
{
	

	if(longlat!=null)
	{
			console.log(longlat);
			var coordMin = ol.proj.fromLonLat(longlat,'EPSG:3857','EPSG:4326');
			var coordMax = ol.proj.fromLonLat(longlat,'EPSG:3857','EPSG:4326');

			var extent=[coordMin[0],coordMin[1],coordMax[0],coordMax[1]];
			map.getView().fit(extent,map.getSize());
			const center = map.getView().getCenter();
			map.getView().setZoom(8.5);
	

	
	
	}
}
	

var   layerselected=[]; 
  $('#getASIReportList').on('change', 'input[type="checkbox"]', function(){
	
	var  lname=this.name.replace(/[\[\]']+/g,'');
	
	
	  var styleName='satellite_data_5'; 
	 var whr="lllat='"+lname+"'";
	


	 	
	  if(this.checked)
		  { 
		
          
		  SectorLayer=	  new ol.layer.Tile({
			 	source : new ol.source.TileWMS({
					url : 'http://localhost:8080/geoserver/cite/wms',
					//crossOrigin: 'anonymous',
					params : {
						'LAYERS' : styleName,
						CQL_FILTER: whr,
						format_options:'dpi:180',
						version : '1.1.1',
						STYLES:''
					}
				}),
				showLegend: true,
				//maxResolution : 256,
				name :styleName,
				//visible:false
			}),
			layerselected.push(SectorLayer);
			  map.addLayer(SectorLayer);
			  console.log(layerselected);
        }
	  else
		  {
		
		 console.log(layerselected);
		  for( var i =0; i<layerselected.length;i++){
			  var a=layerselected[i].get('name');
		
			  if(styleName==a)
				 map.removeLayer(layerselected[i]);		 
			}
		 
		  }
	  console.log(layerselected[0]);
      
    
        });   //checkbox function close bracket

	
 





	 

	
</script>


<script src="ol/ol.js"></script>
<script src="customol/js/clear.js"></script>
<script src="customol/js/identify.js"></script>
<script src="customol/js/exportpdf.js"></script>
<script src="customol/js/measure.js"></script>
<script src="customol/js/controllers.js"></script>
<script src="customol/js/navigation.js"></script>
<script src="customol/js/scaleline.js"></script>
<script src="customol/js/mouse-position.js"></script>
<script src="customol/js/layerSwitcher.js"></script>
<script src="customol/js/findbylocation.js"></script>

<script src="customol/js/LayersGroup/indianmapLayersGroup.js"></script>
<script src="customol/js/LayersGroup/satelliteGroup.js"></script>

<script src="customol/js/LayersGroup/commonlayersGroup.js"></script>
<script src="customol/js/LayersGroup/transportGroup.js"></script>
<script src="customol/js/LayersGroup/IdentifyLayerGroup.js"></script>
<script src="customol/js/addGeom.js"></script>

<script src="customol/js/main.js"></script>
<script src="customol/js/services/services.js"></script>
<script src="customol/js/Base64.js"></script>
<script src="customol/js/geomForm.js"></script>
</html>
