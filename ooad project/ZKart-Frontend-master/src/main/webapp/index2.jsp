<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties" %>
<% AccessProperties ap = new AccessProperties(); %>
<!DOCTYPE html>
<html>
<style>
font{
  font-family:"New Century Schoolbook";
  font-style: normal;
  font-variant: small-caps;
  font-weight: 600;
  font-size: 40px;
  line-height: normal;
}

.box {
  transition: box-shadow .3s;
  width: 220px;
  height: 320px;
  background: #fff;
  float: left;
  margin-bottom: 10px;
  margin-top: 20px;
  margin-left:60px;
  margin-right:20px;

}
.box:hover {
  box-shadow: 0 0 11px rgba(33,33,33,.2); 
  }
  
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}

.round3 {
  border: 1px solid Black;
  border-radius: 10px;
  text-align: center;
  border-collapse: separate;
  border-spacing: 15px;
  
}</style>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Welcome to Flipkart</title>
	<script src="global.js"></script>
	
</head>
<body>
    <%@include file="header.jsp" %>


	<!-- /.breadcrumb -->
	<% String decodedQueryString = request.getParameter("value"); %>
   	
   	<div class="col-sm-14" id="listingDisplay"
		style="margin: 0px 0px 0px 0px; background-color: white">
		<hr />
		<div align="center">
			<font color="Blue">Search Result</font>
		</div>
		<hr />
		<div class="row" style="text-align: center">
			<div id="listing"></div>

		</div>
	</div>


    <%@include file="footer.jsp" %>


</body>
<script>
var birthday = 0;

$(document).ready(function() {
	//console.log(geoplugin_currencyCode());
	
    headerFunctions(ctxPath);
	scroll(ctxPath);
	newProductsAll();
	var user = getCookie("user_details");
	if(user!=""){
	user = JSON.parse(user);
	var username = user.firstName;
	//console.log(username);
	$('#userID').html("Hello '"+username+ "'");
	$('#bday').html(", Happy Birthday To You, Enjoy Shoping ! ");
	var userdob = user.dob;
	//console.log(userdob);
	if (userdob != null) {
	var curDate = new Date();
	var DOB = new Date(userdob);
	if ( curDate.getDate() == DOB.getDate() && curDate.getMonth() == DOB.getMonth() ) {
	birthday = 1;
	//console.log("ani");
	$("#bday").show();
	$("#bdayprice0").show();
	$("#bdayprice1").show();
	$("#bdayprice2").show();
	$("#bdayprice3").show();
	$("#bdayprice4").show();
	$("#bdayprice5").show();
	$("#bdayprice6").show();
	} else {
	//	console.log("ani123");
		$("#bday").hide();
	$("#bdayprice0").hide();
	$("#bdayprice1").hide();
	$("#bdayprice2").hide();
	$("#bdayprice3").hide();
	$("#bdayprice4").hide();
	$("#bdayprice5").hide();
	$("#bdayprice6").hide();
	}
	}
	}
	else{
	//	console.log("ani456");
		$("#bday").hide();
		$("#bdayprice0").hide();
		$("#bdayprice1").hide();
		$("#bdayprice2").hide();
		$("#bdayprice3").hide();
		$("#bdayprice4").hide();
		$("#bdayprice5").hide();
		$("#bdayprice6").hide();
	}

	categoryWiseCarouselFunction();
})

function categoryWiseCarouselFunction()
{
	//getting all subcategories
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				async:false,
				url : ctxPath + "/subcategories",
				dataType : "json", // data type of response
				success :
					function(subcategories)
					{

						var str="";
						for(var i=0;i<subcategories.length;i++)
						{
							//console.log(subcategories_json[i].subcategoryName);
									
							  str+="<div id='product-tabs-slider' class='scroll-tabs outer-top-vs wow fadeInUp' style='border-radius: 35px;'>"+
									"<div class='more-info-tab clearfix '>"+
										"<h3 class='new-product-title pull-left'>"+subcategories[i].subcategoryName+"</h3>"+
										"<!--<ul class='nav nav-tabs nav-tab-line pull-right' id='new-products-categories'>"+
											"<li class='active'><a data-transition-type='backSlide' href='#all' onclick='newProductsAll()' data-toggle='tab'>All</a></li>"+
										"</ul>-->"+
								    "</div>"+
									"<div class='tab-content outer-top-xs'>"+
										"<div class='tab-pane in active' id='all'>"+
											"<div class='product-slider'>"+
												"<div id='new-products-all' class='owl-carousel home-owl-carousel custom-carousel owl-theme'	data-item='4'>";


												

												$.ajax(
														{
															type : 'GET',
															contentType : 'application/json',
															async:false,
															url : ctxPath + "/item/subcategoryid/" + subcategories[i].id,
															dataType : "json", // data type of response
															success :
																function(items)
																{
																	for(var j=0;j<items.length;j++)
																		{
																		var str2="";
																	//	console.log(j+" ");
																	//	console.log(items[j]);
																		
																			
																		var discPrice = Math.round(items[j].price - (items[j].price*items[j].discount/100));
																		var bdaydiscPrice =Math.round( discPrice - (items[j].bdaydiscount*discPrice/100));
																	    var imgServerURL = "<%=ap.getImageServerURL() %>";



																			str2+='<div id="prod'+j+'" class="item item-carousel" >'+
																			'<div class="products">'+
																				'<div class="product">'+
																					'<div class="product-image">'+
																						'<div class="image" >'+
																							'<a id="productImg'+j+'" href="item.jsp?id='+items[j].id+'"><img id="productImage'+j+'" src="'+imgServerURL+items[j].imgUrl+'"  style="display: block; object-fit: contain; width: 250px; height: 250px;"></a>'+
																						'</div>'+
																						'<!-- /.image -->'+
																					'</div>'+
																					'<!-- /.product-image -->'+
																							'<div class="product-info text-center">'+
																						'<h3 class="name">'+
																							'<a id="productName'+j+'" href="item.jsp?id='+items[j].id+'">'+items[j].listingName+'</a>'+
																						'</h3>'+
																						'<!--<div id="rateit1'+j+'" class="rateit" data-rateit-readonly="true" style="font-size:15px"></div>-->'+
																						'<div class="description"></div>'+

																						
																						'<div id="ps'+j+'">MRP : <strike style="color:red">'+items[j].price+'</strike></div>'+
																						'<div class="product-price">'+
																							'<span class="price"> <span id="actualPrice'+j+'">Seller-Discount : '+items[j].discount+'%<br/></span> <span id="discPrice'+j+'">Offer-Price: '+discPrice+'</span></span>'+
																						'</div>';
																						console.log("bith day " + birthday);
																						if(birthday==1){
																						str2+='<div class="product-price">'+
																							'<span class="price" id="bdayprice'+j+'"> <span'+
																								'id="bdayactualPrice'+j+'">BirthDay-Discount : '+items[j].bdaydiscount+'%<br/></span> <span class="price">'+
																								 '<span id="bdaydiscPrice'+j+'">BirthDay-Price: '+bdaydiscPrice+'</span>'+
																							'</span></span></div>';}
																							str2+='<!-- /.product-price --></div><!-- /.product-info --></div><!-- /.product --></div><!-- /.products --></div><!-- /.item -->';
																												

																							str+=str2;
																						//	console.log("str2" + str2);
												//											alert(str2);

















																		
																		}
																},
													    	error:
													    		function()
													    		{
													    			alert("error occcured while retrieving item for a subcategory");
													    		}
														});
													//console.log("str2= "+str2);
												//str+=str2;


												
												str+="</div>"+
											"</div>"+
										"</div>"+
									"</div> "+
								"</div>";
						//	console.log("str" + str);












								
						 }


						

						//document.getElementById("categoryWiseCarouselSpan").innerHTML=str;
					},
		    	error:
		    		function()
		    		{
		        		alert("error occurred while retrieving subcategory");
		    		}
			});	
}

function scroll(ctxPath)
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/categories",
		dataType : "json", // data type of response
		success :
			function(categories_json)
			{
			for(var i=0;i<categories_json.length;i++)
				{
					var htmlData = "<li><a data-transition-type='backSlide' onclick='categoryItems("+categories_json[i].id+")'"+
					"data-toggle='tab'>"+categories_json[i].categoryName+"</a></li>"
					$("#new-products-categories").append(htmlData);
				}
			},
    	error:
    		function()
    		{
        	//alert("error occurred");
    		}
	});
}

function categoryItems(id)
{
	for(var i=0;i<7;i++)
	{
		$("#prod"+i).hide();
	}
    var max_len = 7;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/item/category/"+id,
		dataType : "json", // data type of response
		success :
			function(listings_json)
			{
			    var imgServerURL = "<%=ap.getImageServerURL() %>";
			    var len = max_len;
			    if(listings_json.length<len)
			    	len = listings_json.length;
				for(var i=0;i<len;i++)
				{
					var discPrice = listings_json[i].price - (listings_json[i].price*listings_json[i].discount/100);
					$("#productImage"+i).attr("src",imgServerURL+listings_json[i].imgUrl);
					$("#productImg"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productName"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productImage"+i).attr("style",'display: block; object-fit: contain; width: 250px; height: 250px;');
					$("#productName"+i).html(listings_json[i].listingName);
//geoplugin_currencyConverter(listings_json[i].price,geoplugin_currencyCode())
					$("#discPrice"+i).html(discPrice);
// 					$("#discPrice"+i).append(" ("+listings_json[i].manufacture_Date+")");
					$("#actualPrice"+i).html(listings_json[i].price);
					$("#prod"+i).show();
				}

			},
    	error:
    		function(){}
	});
}
function newProductsAll()
{
    var max_len = 7;
	for(var i=0;i<max_len;i++)
	{
		$("#prod"+i).hide();
	}
	//console.log(ctxPath);
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/item/date/"+max_len,
		dataType : "json", // data type of response
		success :
			function(listings_json)
			{
			    var imgServerURL = "<%=ap.getImageServerURL() %>";
			//    console.log("isl" + imgServerURL);
				for(var i=0;i<listings_json.length;i++) {
				//	console.log(listings_json[i]);
					var discPrice = Math.round(listings_json[i].price - (listings_json[i].price*listings_json[i].discount/100));
					var bdaydiscPrice =Math.round( discPrice - (listings_json[i].bdaydiscount*discPrice/100));
					$("#productImage"+i).attr("src",imgServerURL+listings_json[i].imgUrl);
					$("#productImg"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productName"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productImage"+i).attr("style",'display: block; object-fit: contain; width: 250px; height: 250px;');
					$("#productName"+i).html(listings_json[i].listingName);
					//add rating
					var ratingId = "#rateit1" + i;
				//	console.log(ratingId);
					(function(index){
						var j = index;
						$.ajax({
						type : 'GET',
						url : ctxPath + "/reviews/item/avg/" + listings_json[i].id,
						dataType : "json",
						success : function(rating) {
						//	console.log("ratingId: " + j + ", rating: " + rating);
							$("#rateit1"+j).rateit('value', rating);
							},
						error : function() {
						//	console.log("ratingId: " + j + ", rating: " + rating);
							$("#rateit1"+j).rateit('value', 0);
							}
						})
				})(i);
					$("#ps"+i).html("MRP : <strike style='color:red'>"+listings_json[i].price+"</strike>");
					$("#discPrice"+i).html(" Offer-Price: "+discPrice);
					$("#bdaydiscPrice"+i).html(" BirthDay-Price: "+bdaydiscPrice);
					//$("#disc"+i).html(listings_json[i].discount);
// 					$("#discPrice"+i).append(" ("+listings_json[i].manufacture_Date+")");
					$("#actualPrice"+i).html("Seller-Discount : "+listings_json[i].discount+"%<br>");
					$("#bdayactualPrice"+i).html("BirthDay-Discount : "+listings_json[i].bdaydiscount+"%<br>");

					$("#prod"+i).show();
				}
			},
    	error:
    		function(){}
	});
}
</script>
<script>
var imgServerURL = "<%=ap.getImageServerURL()%>";
	var searchItem;
	var suggestionItems;
	var itemSearch;
	var items;
	var selItemIds=[];
	
	function GetItemList(){
		$.ajax({
			type : 'GET',
			url : ctxPath + "/item",
			dataType : "json",
			async: false,
			success : function(itemList) {
				/* ItemAutoComplete(itemList); */
				items = itemList;
			},
			error : function(err) {
				alert(err.status);
			}
		});
	}
	   
	function GetItemInfo(selItemIds){
		var data = "";
		for(var itemId in selItemIds){
			$.ajax({
				type : 'GET',
				url : ctxPath + "/item/"+selItemIds[itemId],
				dataType : "json",
				success : function(result) {
					/* alert(result.id); */
					var data = "<div class='col-sm-4, box round3'>" + 
				"<a href='item.jsp?id=" + result.id +"'>" + 
					"<div><div class='image'>" + 
						"<img class='product-image' style='display: block; object-fit: contain; width: 215px; height: 215px;'" + 
						"src='" +imgServerURL+ result.imgUrl+"' alt=''>" +
					"</div></div>"+
			        "<div style = 'font-size:16px; text-align:centre'>" + result.listingName + "</div>"+
			        "<div style = 'font-size:16px; text-align:centre'>Price:&nbsp;&nbsp;" + result.price + "</div>"+
			        "<div style = 'font-size:16px; text-align:centre'>Item Id:&nbsp;&nbsp;" + result.itemId + "</div></div>";
					/* var data = result.id; */
					console.log(data);
					$('#listing').append(data);
				},
				error : function(err) {
					alert(err.status);
				}
			});
		}
	}
	
   $(document).ready(function(){
	GetItemList();
	console.log("getting val");
	console.log('${param["value"]}');
	searchItem = String('${param["value"]}');
	console.log(searchItem);
   	
	$(".search-field").val(searchItem);
   	for(var item in items){
   		var it = items[item]['listingName'];
   		if(it.includes(searchItem)){
   			selItemIds.push(items[item]['id']);
   		}
   	}
   	console.log(selItemIds);
   /* 	$("#hiddenSearch").val(searchItem);
   	console.log("===========================");
	  for(var it in suggestionItems){
		  console.log(suggestionItems[it]);
	  } */
	  GetItemInfo(selItemIds);
   });

   
   
</script>

<link href="rateit/rateit.css" rel="stylesheet" type="text/css">
<script src="rateit/jquery.rateit.min.js" type="text/javascript"></script>
</html>
