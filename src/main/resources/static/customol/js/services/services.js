function getreport()
{

var data=null;
	$.ajax({
		url:"/ASIReport",
		method:"POST",
		dtaType:"json",
		async: false,
		data:{},
		success:function(j)
		{
			
			console.log(j);
			 data=j;  
				  
		},
		error:function (error)
		{
			alert(error);
		}
	});
	return data;

}

function getState()
{
	var data=null;
	$.ajax({
		url:"https://api3.ncog.gov.in/BaseRest/getstate",
		method:"POST",
		dtaType:"json",
		async: false,
		data:{},
		success:function(j)
		{
			
			 data=j;  
				  
		},
		error:function (error)
		{
			alert(error);
		}
	});
	return data;
	
	
}

function getDistrict(id)
{
	var code={};
	 code.statecode=id;
	 var codobject=JSON.stringify(code);
	 var data=null;
	$.ajax({
		url:"https://api3.ncog.gov.in/BaseRest/getdistrict/"+id,
		method:"POST",
		async: false,
		contentType:"application/json;charset=utf-8",
		
		data:codobject,
		success:function(j)
		{
			data=j;
		},
			error:function(error)
			{
				alert(error);
			}
			
			
		});
	return data;
		}

function getTalukas(id)
{
	var code={};
	 code.districtcode=id;
	 var codobject=JSON.stringify(code);
	var options="";
	var data=null;
	$.ajax({
		url:"https://api3.ncog.gov.in/BaseRest/gettaluka/"+id,
		method:"POST",
		async: false,
		contentType:"application/json;charset=utf-8",
		
		data:codobject,
		success:function(j)
		{
			
			 data=j;
		},
		error:function(error)
		{
			alert(error);
		}
		
		
	});
	return data;
}
function getVillage(id)
{
	var code={};
	 code.talukacode=id;
	 var codobject=JSON.stringify(code);
	var options="";
	var data=null;
	$.ajax({
		url:"https://api3.ncog.gov.in/BaseRest/getvillage/"+id,
		method:"POST",
		async: false,
		contentType:"application/json;charset=utf-8",
		
		data:codobject,
		success:function(j)
		{
			
			 data=j;
		},
		error:function(error)
		{
			alert(error);
		}
		
		
	});
	return data;
}



