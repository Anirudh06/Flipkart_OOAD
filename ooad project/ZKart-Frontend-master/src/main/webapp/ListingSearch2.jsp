<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Items</title>
		<script src="global.js"></script>
</head>
<style>
.box {
  transition: box-shadow .3s;
  width: 300px;
  height: 300px;
  background: #fff;
  float: left;
  margin-bottom: 10px;
  margin-top: 10px;
}
.box:hover {
  box-shadow: 0 0 11px rgba(33,33,33,.2); 
}
</style>


<body>
	
    <%@include file="header.jsp" %>    
    
    	<nav aria-label="breadcrumb" style="font-size: 150%;margin-left:260px;">
		    <ol class="breadcrumb">
		      <li class="breadcrumb-item" id="categoryName"></li>
		      <li class="breadcrumb-item active" aria-current="page" id="subCaregoryName"></li>
		    </ol>
		  </nav>
    <div class=row id="body">    
    <div class=row id="body" style="margin-top: 10px;margin-left:10px;margin-right:40px">
      <div class="col-sm-2" id="filters" style="margin: 0px 20px 0px 20px;background-color: white;">
<!--       	<div class="slider slider-horizontal" id=""> -->
<!--       		<div class="slider-track"> -->
<!--       			<div class="slider-selection" style="left: 23.3333%; width: 33.3333%;"> -->
<!--       			</div> -->
<!--       			<div class="slider-handle min-slider-handle" style="left: 23.3333%;" tabindex="0"> -->
<!--       			</div> -->
<!--       			<div class="slider-handle max-slider-handle" style="left: 56.6667%;" tabindex="0"> -->
<!--       			</div> -->
<!--       		</div> -->
      		
<!--       <div class="tooltip tooltip-main top" style="left: 40%; margin-left: -35px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">240 : 440</div></div><div class="tooltip tooltip-min top" style="left: 23.3333%; margin-left: -35px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">240</div></div><div class="tooltip tooltip-max top" style="top: -30px; left: 56.6667%; margin-left: -35px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">440</div></div></div> -->
        <div style = 'font-size:30px; text-align:center; font-family:bold'>Filters</div>
        <section>
           <div style = 'font-size:25px; text-align:left; font-family:bold; margin-top:40px'>Price</div>
           <div style = 'font-size:20px; text-align:center; font-family:bold; margin-top:20px'>Minimum</div>
           <div align="center">

            <input type="text" style = 'font-size:20px; text-align:center;' value="0" name="MinPrice" id="MinPrice" >
            
           </div>
              <div style = 'font-size:20px; text-align:center; font-family:bold; margin-top:20px'>Maximum</div>
              <div align="center">
              <input type="text" style = 'font-size:20px; text-align:center;' value="100000" name="MaxPrice" id="MaxPrice" >
           </div>
           <div id="priceError" style="font-size:15px;color:red">Minimum price cannot be larger than maximum price</div>
           <div id="Filter"></div>
           <button type="button"  class="btn btn-primary" id="applyFilter" style="margin:auto;display:block;margin-top:40px" onclick="loadListings()"><b>Apply Filter</b></button>
        </section>
        
      </div>

      <div class=col-sm-9 id="listingDisplay" style="margin: 0px 0px 0px 20px;background-color:white">
            <div class="more-info-tab clearfix ">
            <h4 class="pull-left">Sort By :</h4>
            <ul class="nav nav-tabs nav-tab-line" id="new-products-1">
              <li onclick="SortAsscending('ActualPrice')">
              	<a data-transition-type="backSlide" href="#smartphone" data-toggle="tab">Price -- Low to High</a>
              </li>
              <li onclick="SortDescending('ActualPrice')">
              	<a data-transition-type="backSlide" href="#laptop" data-toggle="tab">Price -- High to low</a>
              </li>
              <li onclick="SortDescending('manufacture_Date')">
              	<a data-transition-type="backSlide" href="#laptop" data-toggle="tab">Recent</a>
              </li>
            </ul>
            <!-- /.nav-tabs --> 
          </div>
      </div>
      <div class=col-sm-9 id="listingDisplay" style="margin: 0px 0px 0px 20px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
           
         </div>
      </div>
    </div>
    </div>
<br/>
<br/>
    <%@include file="footer.jsp" %>
    
<script>
$(document).ready(function()
{
		headerFunctions(ctxPath);	
		loadAllFilters();	
		$("#priceError").hide();
		loadGenericFilter("brand");
		loadGenericFilter("colour");
		loadListings();
})

	function populateBreadCrumb(categoryName, subCategoryName) {
		  $("#categoryName").html(categoryName);
		  $("#subCaregoryName").html(subCategoryName);
	}

	function loadAllFilters() {
		var allFilters = getAllFiltersBySubCategoryId();
		for(var i in allFilters) {
			populateFilter(allFilters[i].filterName, allFilters[i].id);
		}
	}

	function getAllFiltersBySubCategoryId() {
		var res = "";
		var subcategoryId = "<%=request.getParameter("id")%>";
		$.ajax({
			type : 'GET',
			contentType : 'application/json',
			async : false,
			url : ctxPath + "/filter/subcategory/" + subcategoryId,
			dataType : 'json',
			success : function(allFilters) {
				res = allFilters;
			},
			error : function(error) {
				console.log("error occured " + error);
			}
		});
		return res;
	}

	function populateFilter(filterName, filterId) {
		$.ajax({
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/filterValues/" + filterId,
			dataType : 'json',
			success : function(filterValues) {
				var data="<div style='text-align:center; margin-top:50px'><select id='"+filterName+"_Filter'>"+"<option value='0'>Select a " +filterName+"</option>";
				for(var i in filterValues) {
					data+="<option value='"+(parseInt(i)+1)+"'>"+filterValues[i].value.toLowerCase()+"</option>";
				}
	            data += "</select></div>";
	            $('#Filter').append(data);
				
			},
			error : function(error) {
				console.log("error occured " + error);
			}
		});
	}

    function loadGenericFilter(prop)
	{
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/item/subcategoryid/"+subcategoryid,
	        			async : false,
	        			dataType : "json", // data type of response
	        			success : function(result){
	        				var uniqueProp = [];
	        				for(i = 0; i< result.length; i++){    
	        				    if(uniqueProp.indexOf(result[i][prop].toLowerCase()) === -1){
	        				        uniqueProp.push(result[i][prop].toLowerCase());        
	        				    }        
	        				}
	        				var data="<div style='text-align:center; margin-top:50px'><select id='"+prop+"_Filter'>"+"<option value='0'>Select a " +prop+"</option>";
	        	            for(i=0;i<uniqueProp.length;i++){
	        	               data+="<option value='"+(i+1)+"'>"+uniqueProp[i].toLowerCase()+"</option>";
	        	            }
	        	            data += "</select></div>";
	        	            $('#Filter').append(data);
	        	    	},
	        	    	error:function(){
	        	    		swal("error occurred");
	        	        	
	        	    	}
	        		});
	}

	
	function loadListings(){
		$('#listing').empty();
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/item/itemDTO/subCategoryId/"+subcategoryid,
	        			async : false,
	        			dataType : "json", // data type of response
	        			success : function(result){
		        			populateBreadCrumb(result[0].item.subCategory.category.categoryName, result[0].item.subCategory.subcategoryName);
	        				for (var i in result){
		        				// price filter
	        					var ActualPrice = Math.round(result[i].item.price - (result[i].item.discount/100)*result[i].item.price);
	        					if (ActualPrice <  $("#MinPrice").val() || 
		    	        				ActualPrice > $("#MaxPrice").val()) continue;

	        					// for each filter check if the matched value is selected
	        					var allFilters = getAllFiltersBySubCategoryId();
	        					var filterValues = result[i].filterValues; // array of filter values
	        					var matched = true;
	        					for(var k in allFilters) {
		        					if($("#" + allFilters[k].filterName+"_Filter").val() === undefined) continue;
		        					// find the value of the attribute with filtername
		        					var value = "";
		        					for(var j in filterValues) {
			        					if (filterValues[j].attribute == allFilters[k].filterName)
				        					value = filterValues[j].value;
			        				}
			        				//if(value == "")  matched = false;
		        					if (
				        					$("#" + allFilters[k].filterName+"_Filter option:selected").text().toLowerCase() != value.toLowerCase() &&
	    	    	        				parseInt($("#" + allFilters[k].filterName+"_Filter").val()) != 0
	    	    	        			) matched = false;
		        				}
		        				if(matched == false) continue;
	    	        			// brand and color filter
	        					if(
	    	        					(
	    	    	        					$("#brand_Filter option:selected").text().toLowerCase() != result[i].item.brand.toLowerCase() && 
	    	    	        				$("#brand_Filter").val()!=0
	    	    	        			) ||
	    	    	        			(
	    	    	    	        			$("#colour_Filter option:selected").text().toLowerCase() != result[i].item.colour.toLowerCase() && 
	    	    	    	        			$("#colour_Filter").val()!=0
	    	    	    	        	)
	    	    	    	        )
	        						continue;
	        					displayListings(result[i].item);
	        				}
	        	            
	        	    	},
	        	    	error:function(){
	        	    		swal("error occurred");
	        	        	
	        	    	}
	        		});
	}
	var user = getCookie("user_details");
	if(user!=""){
	user = JSON.parse(user);
	var username = user.firstName;
	$('#userID').html(username);
	var birthday = 0;
	var userdob = user.dob;
	if (userdob != null) {
	var curDate = new Date();
	var DOB = new Date(userdob);
	if (curDate.getDate() == DOB.getDate() && curDate.getMonth() == DOB.getMonth() ) {
	birthday = 1;
	$("#bday1").show();
	$("#bday2").show();

	} else {
		
	$("#bday1").hide();
	$("#bday2").hide();

	}
	}}
	else{
		$("#bday1").hide();
		$("#bday2").hide();
	}

	function displayListings(result)
	{
	    <% AccessProperties ap = new AccessProperties(); %>
	    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
		var ActualPrice = Math.round(result.price - (result.discount/100)*result.price);
		result["ActualPrice"]=ActualPrice;
		var bdayprice = Math.round(result.ActualPrice - (result.bdaydiscount/100)*result.ActualPrice);
		result["bdayprice"]=bdayprice;
		var data="";

		/*
		if(birthday){
		data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result.id+
		"'> <div style=''>"+
		"<img class='listingImage' style='display: block; object-fit: contain; width: 215px; height: 215px;' src='"+
		imgServerURL+result.imgUrl+"' alt=''></div>"+
        "<div style = 'font-size:15px; text-align:center'>"+result.listingName+"</div>"+
        "<div> MRP : &#8377;"+ result.price+"</div>"+
        "<div style = 'font-size:15px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>Discount :"+
        result.discount+"% &nbsp; &nbsp; D-Price: &#8377;"+ result.ActualPrice+"</div><br/><span id='bday"+result.id+"'>"+
        "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
        "<i style='font-size:15px'></i>B-Discount : "+result.bdaydiscount+"%</div>"+
       	"<div style = 'font-size:15px; text-align:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
       	"</i>B-Price: &#8377;"+result.bdayprice+"</div></span>"+
       	"</div>";}
		else{
			data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result.id+
			"'> <div style=''>"+
			"<img class='listingImage' style='display: block; object-fit: contain; width: 215px; height: 215px;' src='"+
			imgServerURL+result.imgUrl+"' alt=''></div>"+
	        "<div style = 'font-size:15px; text-align:center'>"+result.listingName+"</div>"+
	        "<div> MRP : &#8377;"+ result.price+"</div>"+
	        "<div style = 'font-size:15px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>Discount :"+
	        result.discount+"% &nbsp; &nbsp; D-Price: &#8377;"+ result.ActualPrice+"</div><br/>"+
	       	"</div>";	
		}
		*/

		data += "<div class='col-sm-4, box'>" + 
				"<a href='item.jsp?id=" + result.id +"'>" + 
					"<div style=''>" + 
						"<img class='listingImage' style='display: block; object-fit: contain; width: 215px; height: 215px;'" + 
						"src='" + imgServerURL+result.imgUrl+"' alt=''>" +
					"</div>"+
			        "<div style = 'font-size:16px; text-align:centre'>" + result.listingName + "</div>" +
			        "<div id='rateit" + result.id + "' class='rateit' data-rateit-readonly='true' style='font-size:14px;color:green'></div>";
		if(birthday){ //geoplugin_currencyConverter(listings_json[i].price,geoplugin_currencyCode())
			data += 
	        //"<div>" + rating here +  "</div>"+
	        "<div style = 'font-size:14px; text-align:centre; font-family:verdana;display:inline-block;margin-right:10px;'>" +
	        	"<strike style='color:red'>MRP: "+ result.price +"</strike><br> New Price: "+
	        			result.ActualPrice + " (" + result.discount + "% off) &nbsp; &nbsp; </div>" + 
	        "<br/>" + 
	        "<span id='bday" + result.id + "'>"+
	       		"<div style = 'font-size:14px; text-align:left; font-family:verdana;margin-right:10px;color:green;display:inline-block'>"+
	       		"</i>Birthday Price: " + result.bdayprice + " (" + result.bdaydiscount + "% off)</div>" +
	       	"</span>";
	       	} else {
				data += 
		        "<div style = 'font-size:14px; text-align:centre; font-family:verdana;display:inline-block;margin-right:10px;color:green'>" +
		        "<strike style='color:red'>MRP: " + result.price +"</strike><br> New Price: " +
		        result.ActualPrice+ " (" + result.discount + "% off) &nbsp; &nbsp; </div><br/>";	
			}
		data += "</div>";		
       	$('#listing').append(data);
       	$('div.rateit, span.rateit').rateit();
		var ratingId = "#rateit" + result.id;
		$.ajax({
			type : 'GET',
			url : ctxPath + "/reviews/item/avg/" + result.id,
			dataType : "json",
			success : function(rating) {
				$(ratingId).rateit('value', rating);
				},
			error : function() {
				$("#rateit1"+i).rateit('value', 1);
				}
			});
	}

    function load(result)
    {
	    <% AccessProperties ap1 = new AccessProperties(); %>
	    var imgServerURL = "<%=ap1.getImageServerURL() %>"; 
	    result = JSON.parse(result);
    	for (i=0;i<result.length;i++)
    		{
    		var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
    		var bdayprice = Math.round(result[i].ActualPrice - (result[i].bdaydiscount/100)*result[i].ActualPrice);
    		result[i]["ActualPrice"]=ActualPrice;
    		result[i]["bdayprice"]=bdayprice;
    		if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val()||($("#brand_Filter option:selected").text() != result[i].brand && $("#brand_Filter").val()!=0)||($("#colour_Filter option:selected").text() != result[i].colour && $("#colour_Filter").val()!=0))
    			continue;
    		displayListings(result[i]);
    		/*
    			var data="";
    			data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result[i].id+
	    		"'> <div style=''>"+
	    		"<img class='listingImage' style='display: block; object-fit: contain; width: 215px; height: 215px;' src='"+
	    		imgServerURL+result[i].imgUrl+"' alt=''></div>"+
	            "<div style = 'font-size:15px; text-align:center'>"+result[i].listingName+"</div>"+
	            "<div> MRP : &#8377;"+ result[i].price+"</div>"+
	            "<div style = 'font-size:15px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>Discount :"+
	            result[i].discount+"% &nbsp; &nbsp; D-Price: &#8377;"+ result[i].ActualPrice+"</div><br/>"+
	            "<div id='bday"+result[i].id+"' style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
	            "<i style='font-size:15px'></i>B-Discount : "+result[i].bdaydiscount+"%</div>"+
	           	"<div style = 'font-size:15px; text-align:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
	           	"</i>B-Price: &#8377;"+result[i].bdayprice+"</div>"+
	           	"</div>";
	           	$('#listing').append(data);
           	*/
    		}
    }
	
	
    function SortAsscending(prop)
    {
    	$('#listing').empty();
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/item/subcategoryid/"+subcategoryid,
        				dataType : "json", // data type of response
        				success : function(result){
        				for (i=0;i<result.length;i++)
    					{
    					    var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
    		    		    result[i]["ActualPrice"]=ActualPrice;
    					}
        				result.sort(GetSortOrderAsscending(prop));//Pass the attribute to be sorted on
        				result = JSON.stringify(result);
        				load(result);
        	    	},
        	    	error:function(){
        	    		swal("error occurred");
        	        	
        	    	}
        		});
    }
    function SortDescending(prop)
    {
    	$('#listing').empty();
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/item/subcategoryid/"+subcategoryid,
        			dataType : "json", // data type of response
        			success : function(result){
        				for (i=0;i<result.length;i++)
        					{
        					var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
        		    		result[i]["ActualPrice"]=ActualPrice;
        					}
        				result.sort(GetSortOrderDescending(prop));//Pass the attribute to be sorted on
        				result = JSON.stringify(result);
        				load(result);
        	    	},
        	    	error:function(){
        	    		swal("error occurred");
        	        	
        	    	}
        		});
    }
    
    function starJson(listing)
    {
    	var review = JSON.stringify({
    		"id" : 1,
    	    "listingId" : listing.id,
    	    "userId" : 1
    	});
    	return review;
    }
    
    function GetSortOrderAsscending(prop) { 
        return function(a, b) {  
            if (a[prop] > b[prop]) {  
                return 1;  
            } else if (a[prop] < b[prop]) {  
                return -1;  
            }  
            return 0;  
        }  
    } 
    
    function GetSortOrderDescending(prop) { 
        return function(a, b) {  
            if (a[prop] < b[prop]) {  
                return 1;  
            } else if (a[prop] > b[prop]) {  
                return -1;  
            }  
            return 0;  
        }  
    }  
    
    function AvgStars(listing)
    {
    	$.ajax(
				{
					type : 'POST',
					contentType : 'application/json',
					url : ctxPath + "/reviews/listingId",
					dataType : "json", // data type of response
					data : starJson(listing[i]),
					success : function(result){
						var rating;
						var total=0;
						for(i=0;i<result.length;i++)
							{ 
							    total+=result[i].stars;
							}
						if(result.length==0)
							rating=3;
						else
						    rating = total / (result.length);
						listing["rating"]=rating;
			    	},
			    	error:function() {
			    		swal(error);
			    	}
				});
    		swal(JSON.stringify(listing));
    }
    
    $("#applyFilter").click(function(){
    	var maxVal = parseInt($("#MaxPrice").val());
    	var minVal = parseInt($("#MinPrice").val());
    	//swal(minVal + " " + maxVal)
    	if(minVal>maxVal){
    		$("#MinPrice").val("0");
    		$("#priceError").show();
    	}
    	else {
    		$("#priceError").hide();
    	}
    });
    
	
		
	</script>

</body>
<link href="rateit/rateit.css" rel="stylesheet" type="text/css"/>
<script src="rateit/jquery.rateit.min.js" type="text/javascript"></script>
</html>