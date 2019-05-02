<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="zkart.jsp.AccessProperties" %>
    <%@ page import="zkart.jsp.CreateProperties" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Seller Hub</title>
<%@include file="metaContent.jsp" %>
	<script src="global.js"></script>

</head>
<body>
<%@include file="headerSeller.jsp" %>	

<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <%@include file="sidebarSeller.jsp" %>
      <input type="text" id="sellerid" name="sellerid" hidden="hidden"/>
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
	      
		 <div class=col-sm-12 id="listingDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
	 
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 
</div>


<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap.js"></script>
<script src="./bootstrapFiles/js/bootstrap.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-hover-dropdown.min.js"></script> 
<script src="./bootstrapFiles/js/owl.carousel.min.js"></script> 
<script src="./bootstrapFiles/js/echo.min.js"></script> 
<script src="./bootstrapFiles/js/jquery.easing-1.3.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-slider.min.js"></script> 
<script src="./bootstrapFiles/js/jquery.rateit.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-select.min.js"></script> 
<script src="./bootstrapFiles/js/wow.min.js"></script> 
<script src="./bootstrapFiles/js/scripts.js"></script>
<script src="./customJavascripts/cookies.js"></script>
<script src="./customJavascripts/cookies.js"></script>
<script src="./bootstrapFiles/js/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	
	
 	 	checkCookie();
 		//headerFunctions(ctxPath);		
 		loadListings();
		 
	});
function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 30);
		document.getElementById("sellername").innerText = user.firstName;
		$('#sellerid').val(user.id);
		
	
    } 
    else 
    {	swal("Login failed. Try again.");
      	window.location = "sellerHub.jsp";
    		logout();
    }
}

	function loadListings(){
		$('#listing').empty();
	<%--     	var subcategoryid = "<%=request.getParameter("id")%>"; --%>
	   var sellerid = $("#sellerid").val();
	   
	    	
		        $.ajax(
		        		{
		        			type : 'GET',
		        			contentType : 'application/json',
		        			url : ctxPath + "/item/seller/"+sellerid,
		        			async : false,
		        			dataType : "json", // data type of response
		        			success : function(result){
			        			console.log(result);
		        				for (var i in result){
		        				
							$.ajax(
		        						{
		        							type : 'GET',
		        							contentType : 'application/json',
		        							url : ctxPath + "/item/"+result[i].id,
		        							dataType : "json", // data type of response
		        							success : displayListings,
		        					    	error:function(err) {
		        					    		swal(err);
		        					    	}
		        						});
		        				}
		        	            
		        	    	},
		        	    	error:function(){
		        	    		swal("error occurred");
		        	        	
		        	    	}
		        		});
		}
	
		function getDeals(result){
			
           	swal(data1)
           	return data1;
		}
		
		function displayListings(result)
		{
		    <% AccessProperties ap = new AccessProperties(); %>
		    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
		    var ActualPrice = Math.round(result.price);
			result["ActualPrice"]=ActualPrice;
			var listingid = result.id;
			var data = "";
           	$.ajax({
           		type : 'GET',
           		contentType : 'application/json',
           		url : ctxPath + "/deals/item/"+listingid,
           		dataType : "json", // data type of response
           		success : function(res){
               		console.log(res);
        			data+="<div class = 'row' style = 'font-size:15px; text-align:left; padding-left:20px;' >"+
        					"<div class='col-sm-4' style = 'font-size:15px; text-align:left; padding-top: 40px ; padding-left:40px;'>"+
           					" <div style='width: 260px;height: 250px;'>"+
           						"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
           							imgServerURL+result.imgUrl+"' alt=''>"+
           					"</div>"+
           				"</div>"+
           		    		"<div class='col-sm-8'style ='font-size:15px; text-align:left; padding-top: 70px ; padding-left:60px;' >"+
           		    			"<div style = 'font-size:15px;'>Item ID :  "+result.itemId+"</div>"+
           		    			"<div style = 'font-size:15px;'>Item Name :  "+result.listingName+"</div>"+
           		    			/*"<div style = 'font-size:15px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'></div>"+/*Discount :  "+
           		    				result.discount+"% off"+
           		    			"</div><br/>"+*/
           		    			"<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
	           		    "Actual Price :  "+result.ActualPrice+"<i class='fa fa-inr' style='font-size:15px'></i></div>"+
	           		    "<div style = 'font-size:15px;'>Quantity :  "+result.quantity+"</div>"+
	           		 "<button  style = 'font-size:15px;' onclick='deleteItem("+result.id+")'>Remove Item</button>"+
	           		 "<input type='number'  placeholder='Add Quantity' id='addQuantity" + result.id + "'>" +
	           		"<button  style = 'font-size:15px;' onclick='addQuantity("+result.id+","+result.quantity+")'>Add Quantity</button>"+
	           		    "<span style='display:inline-flex;font-size:15px;color:red'>"/*Deal: &nbsp; <div id='dealid_"+listingid+"'>"*/;
           		 	data += "</div></span></div></div>";
     	       		$('#listing').append(data);
           		 	if(res!=null){
//           		 		res=JSON.parse(res);
							console.log(res);
							//res=JSON.stringify(res);
						//	console.log(res);
           		    	for(var j=0; j<res.length; j++) {
           		    		console.log(res[j]);
           		    		getDealname(ctxPath,listingid,res[j].id);
           				}
           			}
           		},
           		error : function() {
           			swal("error")
           		}
           	 });
		}
		
		function getDealname(ctxPath,listingid,dealid){
			/*console.log("ctxPath= "+ctxPath);
			$.ajax({
           		type : 'GET',
           		contentType : 'application/json',
           		url : ctxPath + "/deals/"+dealid,
           		dataType : "json", // data type of response
           		success: function(deal){
           			document.getElementById("dealid_"+listingid).innerHTML = deal.dealname;	
           		},
           		error: function(){
           			
           		}
           	});
		*/}
		
		
	    
	   
// 	    function load(result)
// 	    {
<%-- 		    <% AccessProperties ap1 = new AccessProperties(); %> --%>
<%-- 		    var imgServerURL = "<%=ap1.getImageServerURL() %>";  --%>
// 	    	for (i=0;i<result.length;i++)
// 	    		{
// 	    		var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
// 	    		result[i]["ActualPrice"]=ActualPrice;
// 	    		if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
// 	    			continue;
// 	    		var data="";
// 	    		data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result[i].id+
// 	    		"'> <div style='width: 260px;height: 250px;'>"+
// 	    		"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
// 	    		imgServerURL+result[i].imgUrl+"' alt=''></div>"+
// 	            "<div style = 'font-size:15px; text-align:center'>"+result[i].listingName+"</div>"+
// 	            "<div style = 'font-size:10px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+
// 	            result[i].discount+"% off</div><br/>"+
// 	            "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
// 	            "<i class='fa fa-inr' style='font-size:15px'></i>"+result[i].ActualPrice+"</div>"+
// 	           	"<del style = 'font-size:10px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'>"+
// 	           	"<i class='fa fa-inr' style='font-size:10px'></i>"+result[i].price+"</del>"+
// 	           	"</div>";
// 		       	$('#listing').append(data);
// 	    	};
// 	    };

function addQuantity(id,oldquantity){
	console.log("oldquantity ="+oldquantity);
	var newquantity=oldquantity;
	var addQuantity = parseInt($("#addQuantity"+id).val());
	if(isNaN(addQuantity)) {
		swal("Quantity has to be integer.");
		return;
	}
	if(addQuantity < 0) {
		swal("Can't be negative number.");
		return;
	}
	$.ajax({
		type : 'PUT',
		contentType : 'application/json',
		url : ctxPath + "/item/update/quantity/" + id ,
		data : JSON.stringify({"quantity" : addQuantity,"newquantity" : newquantity}),
		success : function() {
				swal("Item updated successfully");
				window.location.reload(true);
				
			},
		error: function(err) {
			swal("Item Not Found");
		}
	});
}
function deleteItem(id)
{
	console.log(id);
	$.ajax(
			{
				type : 'DELETE',
				contentType : 'application/json',
				url : ctxPath + "/item/delete/" + id ,
				success : function() {
						swal("Item deleted successfully");
						window.location.reload(true);
						
					},
				error: function(err) {
					swal("Item Not Found");
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
	    
	    function logout()
	    {
	    	deleteCookie("seller_details");
	    }
	  
	    
	</script>		
</body>
</html>