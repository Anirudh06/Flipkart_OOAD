<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties" %>

<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<script src="global.js"></script>
	<title>Flopkart Offer Zone</title>
</head>
<style>
.box {
  transition: box-shadow .3s;
  width: 200px;
  height: 310px;
  background: #fff;
  float: right;
  margin-bottom: 10px;
  margin-top: 10px;
   margin-left: 10px;
}
.box:hover {
  box-shadow: 0 0 11px rgba(33,33,33,.2); 
}
.buynow {
	background: #fb641b;
	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
	border: none;
	color: #fff;
	text-align: center;
	display: inline-block;
	width: 10%;
	padding: 18px 8px;
	border-radius: 2px;
	margin-left: 500px;
}
.buynow:hover {
	color : white;
}
</style>
<body>
    <%@include file="header.jsp" %>

<div class="body-content outer-top-xs" style="padding-right: 20px; ">
  <div class="container" style="margin-left: 10px; width: 100%">
    <div class="row">
      <div class="col-md-2 sidebar"> 
        <!-- ================================== TOP NAVIGATION ================================== -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="headOfferZone"></div>
          <div style="border-bottom: solid 1px rgba(0, 0, 0, .05);padding-left: 8px; padding-bottom: 10px; padding-top:10px">
          <div style="display: inline-block; font-size: 20px; font-weight: bold; font-family: Arial, sans-serif; color: #000; 
            line-height: 32px; ">
             <i style="color:#157ed2; width: 15px; height: 15px; vertical-align: middle;
    			margin-right: 9px;" class="fas fa-tags"></i>
    			 Offer Zone
    	  </div></div>
          <nav class="yamm megamenu-horizontal">
            <ul id="sidebarCat" class="nav">
              <li><a style='color:black' href="offerZone.jsp">Deals of the day</a></li><!-- /.menu-item -->
            </ul>
          </nav><!-- /.nav --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu -->
        
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div style="border-bottom: solid 1px rgba(0, 0, 0, .05); padding: 8px 10px 10px 30px;">
          <div style="display: inline-block; font-size: 20px; font-weight: bold; font-family: Arial, sans-serif; color: #000; 
            line-height: 32px; ">
    			Hot Combo Deals
    	  </div></div>
          <nav class="yamm megamenu-horizontal">
            <ul id="sidebarDeal" class="nav">
            </ul>
          </nav><!-- /.nav --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!--  /side menu 2 --> 
        <!-- ================================== TOP NAVIGATION : END ================================== -->
   	  </div> <!-- col-md-2 -->
	 
	  <div class="col-md-10">
	  	<div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
			<div class="row">
				<div style="border-bottom: 1px solid rgba(0, 0, 0, .1);">
					<h2 style="margin-top:0; margin-left: 20px; font-size: 25px; font-family: Roboto, Arial, sans-serif; line-height: 32px; display: inline-block; font-weight: 500; font-style: italic; color: blue" id="dealname"></h2>
					<img src="./images/offerZone/timer.svg" height="24" width="24" style="position: relative; display: inline-block; margin-right: 8px; 
					margin-left: 20px;"/>
					<p id="timer" style="position: relative; display: inline-block; margin-right: 8px; 
					font-size: 16px; padding-top: 7px;"></p>
				</div>
				
				<div class="alert alert-danger" id="dealdesc"></div>
				
				<div id="deal-product" class="deal-product">
				</div> <!-- deal-product -->
              </div> <!-- row -->
           </div> <!-- tab-content category-list -->
          </div>  <!-- search-result-container -->
      </div> <!-- col-md-9 -->
     </div> <!-- row -->
   </div> <!-- container -->
  </div> <!-- body-content outer-top-xs -->
  
  
<%@include file="footer.jsp" %>
     
</body>
<script>
$(document).ready(function(){

	headerFunctions(ctxPath);
	var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 30);
    } 
    console.log("ravi2")
    fetchCateg(ctxPath);
	
	fetchDeals(ctxPath);
});

//Update the count down every 1 second
var x = setInterval(function() {
	
	//Set the date we're counting down to
	var countDownDate = new Date("Apr 30, 2019 23:59:59").getTime();
	
    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for hours, minutes and seconds
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    if(hours.toString().length<2){
    	hours = "0"+hours;  
    }
    if(minutes.toString().length<2){
    	minutes = "0"+minutes;  
    }
    if(seconds.toString().length<2){
    	seconds = "0"+seconds;  
    }
    
    // Output the result in an element with id="demo"
    document.getElementById("timer").innerHTML = hours + " : "
    + minutes + " : " + seconds + " Left";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("timer").innerHTML = "EXPIRED";
    }
}, 1000);

function fetchCateg(ctxPath) 
{
	console.log("fetch deal");
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/categories",
		dataType : "json", // data type of response
		success :
			function(data)
			{
				categorySideMenu(data,ctxPath);
				console.log("side menu");
			},
    	error:
    		function() 
    		{
        	//alert("error occurred");
    		}
	});
	
}
	
function categorySideMenu(result,ctxPath)
{
	for(var i in result)
	{
		var li_node = document.createElement("li");                 // Create a <li> node
		li_node.className="dropdown";
		li_node.setAttribute("id", "li__"+result[i].id);
		li_node.setAttribute("name", result[i].categoryName);
		var dropdownCont = "dropdownCont(this,'"+ctxPath+"')";
		var scrt_var = 10; 
		var onclickContent = "location.href=this.href+'?key='+scrt_var;";
		var data = " <a href='offerZoneSubcategory.jsp' style='color:black' data-hover='dropdown' "+
				 " onmouseover="+dropdownCont+" onmouseout='setTimeout(dropdownBak,3000, this);' "+
		         "class='category-dropdown dropdown-toggle' data-toggle='dropdown' id='"+
		         result[i].id+"'>"+	result[i].categoryName +
				"</a>";
		var data1 = "<ul style='width:80%' class='dropdown-menu mega-menu'>"+
					"<li>"+
						"<div class='yamm-content'>"+
							"<div class='row'>"+
								"<div class='col-menu'>"+
									"<ul class='links list-unstyled' id='ul__"+ result[i].id+"'>"+
					"</ul></div></div></li></ul>";
		document.getElementById("sidebarCat").appendChild(li_node);
		$(li_node).append(data + data1);
	} 

}
	
function dropdownCont(obj,ctxPath)
{
	var categoryid = obj.id;
//	var ctxPath = "http://localhost:8080/flopkartPrototype";
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/subcategories/category/"+categoryid,
			dataType : "json", // data type of response
			success : 
				function(data)
				{
					subCategoryDrop(data,categoryid);
				},
	    	error:
	    		function() 
	    		{
	        	//alert("error occurred");
	    		}
		});
 	$(obj).css("color","blue");
 	$('#li__'+obj.id).addClass('open');
}

function subCategoryDrop(result,categoryid)
{
	var data = "";
	if(Object.keys(result).length>0)
	{	
		for(var i in result)
		{
			data = data + "<li> <a href='offerZoneSubcategory.jsp?id="+result[i].id+"'>"
					+result[i].subcategoryName+"</a></li>";
		}
		$('#ul__'+categoryid).html(data);
	}
 
	
	else
		$('#li__'+categoryid).removeClass('open');
		

}

function dropdownBak(obj)
{
 	$(obj).css("color","black");
 	$('#li__'+obj.id).removeClass('open');
// 	$('#ul_'+obj.id).empty();
}

function getDealDet(ctxPath,mod,col){
	var dealid = <%=request.getParameter("id")%>;
	console.log("hi hello ="+dealid);
	$.ajax({
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/listingDealsNew/deal/"+dealid,
		dataType : "json", // data type of response
		success : function(listingDeal)
			{
				var today = new Date();
				var num = listingDeal.length/mod;
				for(var i=0; i<num; i++){
					var enddate = new Date(listingDeal[parseInt(i)+1].endDate);
					if(enddate < today){
						continue;
					}
					var data = "<div class='panel panel-default' style='border-width:2px; border-color: black'><div class='panel-heading' id='panelHead"+i+"'>COMBO OFFER "+(parseInt(i)+1)+"</div>"+
					  "<div class='panel-body'>"+
					  "<div style='font-size:15px; color: green'>Combo Description: "+listingDeal[parseInt(i)+1].comboDescription+"</div>"+"<br/>"+
					  "<div id='panelBody"+i+"'></div>"+
					  "</div>"+
					  "<div class='panel-footer'>"+
					  "<div style='font-size: 20px;color: red; display:inline-flex'> OFFER PRICE: &nbsp; <i class='fa fa-rupee-sign'></i> &nbsp; ( <div id='total"+i+"'></div>"+"  &nbsp; -  &nbsp; "+"<div id='minimum"+i+"'></div> )</div>"+
					  "<button onclick='buynow(\""+listingDeal[parseInt(i)+1].comboId+"\")' class='buynow' id='buynow'>Buy Now</a>"+
					  "</div>"+
					  "</div>";
					  console.log("yaha hai ="+data);
					$("#deal-product").append(data);
				}
				var j = -1;
				for(var i=0;i<listingDeal.length;i++){
					if(i%mod==0)
						j = parseInt(j)+1;
					loadInfo(listingDeal[i].item.id, j,col);
				}
			},
	   	error: function() 
	   		{
	       	//alert("error occurred");
	   		}
	});
}

function loadInfo(listingId,i,j){
	<% AccessProperties ap = new AccessProperties(); %>
    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
	$.ajax({
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/item/"+listingId,
		dataType : "json", // data type of response
		success : function(listingJson)
			{
				var name = listingJson.listingName;
	    		var price = listingJson.price - (listingJson.discount*listingJson.price/100);
				var data = "<div class='col-md-4 box'><div class='product'><div class='product-image'><div class='image'><a href='item.jsp?id="+listingJson.id+"'>"+
	    		"<img style='display: block; object-fit: contain; width: 200px; height: 250px;' src='"+ (imgServerURL+listingJson.imgUrl) +"' alt=''>"+
	    		"</a></div></div>"+
	    		"<div style='margin-left:20px;font-size: 14px; font-weight: 500; margin-top: 15px;'>"+
		         "<a href='item.jsp?id="+listingJson.id+"'>"+name+"</a></div>"+
		        "<div style='margin-left:20px;font-size: 14px; font-weight: 500;'><i class='fa fa-rupee-sign'></i>"+price+"</div>"+
	    		"</div></div>";
	    		console.log(data);
	    		minSumCalc(price,i);
	    		$("#panelBody"+i).append(data);
			},
	   	error: function() 
	   		{
	       	//alert("error occurred");
	   		}
	});
}

function minSumCalc(price, i){
	if($("#minimum"+i).text()==""){
		$("#minimum"+i).text(price);
	}
	if(price < parseInt($("#minimum"+i).text())){
		$("#minimum"+i).text(price);
    }
	var sum;
	if($("#total"+i).text()==""){
		sum = 0.0;
	}
	else {
		sum = parseInt($("#total"+i).text());
	}
	sum += price;
	$("#total"+i).text(sum);
}

function fetchDeals(ctxPath) 
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/dealsNew",
		dataType : "json", // data type of response
		success :
			function(deals)
			{
				var data = "";
				for(var i in deals)
				{
					console.log(deals[i].dealName);
					if(deals[i].dealname === "50% off" || deals[i].dealname === "15% Cashback")
						continue;
					data += "<li><a href='offerZoneDeal.jsp?id="+deals[i].id+"'>"
							+deals[i].dealName+"</a></li>";
					var dealid = <%=request.getParameter("id")%>;
					if(dealid == deals[i].id){
						$("#dealname").text(deals[i].dealName);
						$("#dealdesc").text(deals[i].description);
					}
				}
				$("#sidebarDeal").html(data);

				if($("#dealname").text()==="Buy 3 Get 1" || $("#dealname").text()==="buy 3 get 1" || $("#dealname").text()==="buy3get1"){
					getDealDet(ctxPath,4,3);
				}
				else if($("#dealname").text()==="Buy 2 Get 1" || $("#dealname").text()==="buy 2 get 1" || $("#dealname").text()==="buy2get1"){
					getDealDet(ctxPath,3,4);
				}
				else if($("#dealname").text()==="Buy 1 Get 1" || $("#dealname").text()==="buy 1 get 1" || $("#dealname").text()==="buy1get1"){
					getDealDet(ctxPath,2,6);
				} 
				
			},
    	error:
    		function() 
    		{
        	//alert("error occurred");
    		}
	});
}

function buynow(comboid){
	var user = getCookie("user_details");
	if(user==""){
		swal("Please login");
	}
	else{
		document.location.href= "buyNowDeal.jsp?comboid="+comboid;
	}
}
</script>
</body>
</html>