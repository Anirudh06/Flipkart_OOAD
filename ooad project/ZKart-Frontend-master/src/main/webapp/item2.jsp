<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties"%>
<!DOCTYPE html>
<html>
<head>
<meta property="og:url"           content="https://localhost:8080/zkart-app" />
<meta property="og:type"          content="website" />
<meta property="og:title"         content="Your Website Title" />
<meta property="og:description"   content="Your description" />
<meta property="og:image"         content="https://www.your-domain.com/path/image.jpg" />
<%@include file="metaContent.jsp"%>
<title>Item Display</title>
		<script src="globa_wishlist.js"></script>

<style>
.buynow {
	background: #fb641b;
	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
	border: none;
	color: #fff;
	width: 48%;
	padding: 18px 8px;
	border-radius: 2px;
}

.buynowdiv {
	padding-top: 20px;
}

.addtocart {
	background: #ff9f00;
	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
	border: none;
	color: #fff;
	text-align: center;
	display: inline-block;
	width: 48%;
	padding: 18px 8px;
	border-radius: 2px;
}
</style>
	<script src="global.js"></script>
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.12';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

	<%@include file="header.jsp"%>

	<div class="breadcrumb" style="font-size: 130%;margin-left:80px;$breadcrumb-divider: quote('>');">
    	<div class="container">
      		<div class="breadcrumb-inner">
		        <ul class="list-inline list-unstyled">
			        <li class="breadcrumb-item" id="categoryName"></li>
			        <li class="breadcrumb-item" id="subCaregoryName"></li>
		            <li class="breadcrumb-item active" aria-current="page" id="itemName"></li>
        		</ul>
      		</div>
      		<!-- /.breadcrumb-inner -->
    	</div>
    	<!-- /.container -->
  	</div>
  	<!-- /.breadcrumb -->
  	<div class="body-content outer-top-xs">
		<div class='container'>
			<div class='row single-product'>
				<div class="col-md-12">
					<div class="detail-block">
						<div class="row  wow fadeInUp">

							<div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
								<div id="gallery"
									class="product-item-holder size-big single-product-gallery small-gallery">

									<!--         <div id="owl-single-product"> -->
									<!--             <div class="single-product-gallery-item" id="slide1"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p9.jpg"> -->
									<!--                     <img class="img-responsive" alt="" width="480px" src="./images/blank.gif" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide2"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p9.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p9.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide3"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p10.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p10.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide4"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p11.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p11.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide5"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p12.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p12.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide6"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p13.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p13.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide7"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p14.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p14.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide8"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p4.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p4.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--             <div class="single-product-gallery-item" id="slide9"> -->
									<!--                 <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p5.jpg"> -->
									<!--                     <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p5.jpg" /> -->
									<!--                 </a> -->
									<!--             </div>/.single-product-gallery-item -->

									<!--         </div>/.single-product-slider -->




								</div>
								<!-- /.single-product-gallery -->
								<div class="buynowdiv">
								
								
								
								
									<form action="buyNow.jsp">
										<button id="buynow" onclick="return " class="buynow">Buy Now</button>
										<button id="buynow_incart" class="buynow">Buy Now</button>
										<a href="#" onclick="return addToCart()" onmouseover="style='color:white'" class="addtocart" id="addtocart">Add to cart </a>
										<a href="cart.jsp" onmouseover="style='color:white'" class="addtocart" id="gotocart">Go to cart </a>
										<input type="text" name="listingid"
											value='<%=request.getParameter("id")%>' hidden="hidden">
										<input type="number" id="quant" name="quant" hidden="hidden">
										<input type="text" name="listingname" id="listingname"
											hidden="hidden">
										<input type="number" id="listingdiscount"
											name="listingdiscount" hidden="hidden"> <input
											type="text" id="sellername" name="sellername" hidden="hidden">
										<input type="number" id="listingquant" name="listingquant"
											hidden="hidden"> <input type="text" id="itemid"
											name="itemid" hidden="hidden">
										<input type="number" id="dealid" name="dealid" hidden="hidden">
										<input type="number" id="dealdiscount" name="dealdiscount" hidden="hidden">
									</form>
								</div>
							</div>
							<!-- /.gallery-holder -->
							<div class='col-sm-6 col-md-7 product-info-block'>
								<div class="product-info" id="product-info">
									<h1 class='name' id='product_title'></h1>

									<div class="row">
						            <div class="col-sm-4" id="seller_rating" style="padding-right:0px;">
						                 <span style="font-size:14px">Seller Rating : </span>
														 <span class="rateit" id="rateit10"></span>
						            </div>

						            <div class="col-sm-5" id="seller_rating_unavailable" style="font-size:14px" hidden="hidden">
						                 <span style=" font-size:14px;">Seller Rating : </span>
                                         <span style="color:red; font-size:14px;"> Not enough Ratings</span>
						            </div>
						          <div class="col-sm-5" style="color:blue;">
						          <span id="seller_rating_total" style="font-size:14px"></span>
						            <span id="seller_rating_customers" style="font-size:14px"></span></div></div>

						            <div class="row" style="padding-top:9px;">
										<div class="col-sm-2" style="padding-right:0px;">
											<span style="font-size:14px">Item id </span>
											<div class="fb-share-button" data-href="https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=wFbOWtutO-2cX9OFq-AD" data-layout="button_count" data-size="small" data-mobile-iframe="false"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Share</a></div>
										</div>
										<div class="col-sm-8" style="padding-left:0px;">
											<span style="font-size:14px" id='product_id'></span>
										</div>
										<div class="col-sm-4" style="padding-right:0px;"></div>
									</div>
									<div class='stock-container info-container m-t-10'>
										<div class='row'>
											<div class='col-sm-2' >
												<div class='stock-box' style="padding-left:0px">
													<span  style="font-size:14px">Availability </span>
												</div>
											</div>
											<div class='col-sm-9' style="padding-left:0px">
												<div class='stock-box' style="padding-left:0px">
													<span style="color: red; font-size: 14px" id='available'></span>
													<span hidden="hidden" id='available_quant'></span>
												</div>
											</div>
										</div>
									</div>
									<div class='description-container m-t-20'
										style="font-size: 14px " id='itemdescription'>
									</div>


<!-- code to add deals -->
<div id="dealContainer">
<div style='font-size: 15px; color: purple' id='dealname'></div>
</div>

									<div id="dealContainer">
<div id="hideme">
										<div class="col-sm-5 sidebar" id ="sub-cat-head">
												<h4 class="widget-title"><B>DEALS<label style="color:red; padding-left:3px;">  *</label></B></h4>
												<div class="col-md-2 sidebar"> </div>
										</div>


										<div class="row">
	           		        <div class="col-sm-5 sidebar" id ="cat-content" >
	           	            </div>
	           	            <div class="col-md-2 sidebar"> </div>
	           	        </div>
											<button id="applyDeal">Apply Deal</button>
</div>

<!-- end-->

									<div class='price-container info-container m-t-20'>
										<div class='row'>
											<div class='col-sm-6'>
											<div class='price-strike'>
														<span id='price-strike'></span>
													</div>

													<div style='font-size: 14px; color: blue' id='discount'></div>
												  <div class='price-box' style="display: inline-flex;">
													<div style="margin-right: 15px font-size: 20px; color: green">
													<span id='discountedprice'></span>
													</div>
												  </div>


											    <span id="bdayprice">
											    <div style='font-size: 14px; color: red' id='bdaydiscount'></div>
											  	<div class='price-box' style="display: inline-flex;">
													<div style="margin-right: 15px font-size: 20px;">
													<span id='bdaydiscountedprice'></span>
													</div>
												  </div>
													</span>


														<div id='dealdiscountprice'></div>



												<div style='font-size: 15px; color: purple' id='dealname'></div>

											<div class='col-sm-6'>
												<div class='favorite-button m-t-10'>
													<a class='btn btn-primary' data-toggle='tooltip'
                            							data-placement='right' id="wishlistHeart" title='Wishlist' href='#' onclick="toggleWishlist();"> <i
                            							class='fa fa-heart'></i>
                          							</a>
                          							<a class='btn btn-primary' data-toggle='tooltip'
														data-placement='right' title='E-mail' href='#'> <i
														class='fa fa-envelope'></i>
													</a>



												</div>
											</div>
											</div>
										</div>
									</div>
									<div class='quantity-container info-container'>
										<div class='row'>
											<div class='col-sm-2'>
												<span class='label'>Qty :</span>
											</div>
											<div class='col-sm-2'>
												<div class='cart-quantity'>
													<div class="quant-input">
														<div class="arrows">
															<div id="quant-up" class="arrow plus gradient">
																<span><i class="icon fa fa-sort-asc"></i></span>
															</div>
															<div id="quant-down" class="arrow minus gradient">
																<span><i class="icon fa fa-sort-desc"></i></span>
															</div>
														</div>
														<input type="number" id="quantity" min="1">
													</div>
												</div>
											</div>
											<div class='col-sm-8'>
												<div id="quantwarning" class="alert alert-warning"
													hidden="hidden"></div>
											</div>
										</div>
									</div>
									<div  id="additionalDetails_div" class='col-sm-12' style ='border-style: groove;border-width: 4px;' >
										<table class="table-condensed">
											<thead>
												<tr>
													<th colspan="2" style="font-size: 120%">Additional
														Details</th>
												</tr>
											</thead>
											<tbody id="additionalDetails">
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- /.quantity-container -->
				</div>
				<!-- /.product-info -->
			</div>
			<!-- /.col-sm-7 -->
		</div>
		<!-- /.row -->
	</div>
</body>

<%@include file="footer.jsp"%>

<link href="rateit/rateit.css" rel="stylesheet" type="text/css">
<script src="rateit/jquery.rateit.min.js" type="text/javascript"></script>
<script>
	var birthday = 0;
	var iitteemm="ll";
	var finalAmount=0;
	$(document).ready(function() {
		getDealDetails(ctxPath);
		headerFunctions(ctxPath);
		$("#bdayprice").hide();
		console.log("on ready");
		var user = getCookie("user_details");

		if(user!="") {
			console.log("user valid");
			var username = JSON.parse(user).firstName;
			$('#userID').html(username);
			var userdob = JSON.parse(user).dob;
			console.log(user);
			console.log("dob:"+userdob);
			if (userdob != null) {
				console.log("dob accessed");
				var curDate = new Date();
				var DOB = new Date(userdob);
				console.log("curr date:"+curDate);
				console.log("user date:"+DOB);
				if ( curDate.getDate() == DOB.getDate() && curDate.getMonth() ==
					DOB.getMonth() ) {
					birthday = 1;
					console.log("birthday today");
					$("#bdayprice").show();
				}
			}
		}


		$("#quantity").val("1");
		$("#quant").val("1");

		<%AccessProperties ap = new AccessProperties();%>
		var imgServerURL = "<%=ap.getImageServerURL()%>";
	    var itemId = "<%=request.getParameter("id")%>";

			console.log("calling");
			setDeals();


		console.log("set deals");

		$.ajax({
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/item/" + itemId,
				dataType : "json", // data type of response
				success : function(itemDetails){
						iitteemm=itemDetails;
						console.log(iitteemm);
					if(itemDetails.quantity < 1) {
						$("#available").text("Out of Stock");
						$("#buynow").hide();
						$("#addtocart").hide();
						$("#gotocart").hide();
						$("#buynow_incart").hide();
					} else {
						$("#available").text(" : In Stock "+" (" + itemDetails.quantity + ")" );
						$("#available_quant").text(itemDetails.quantity);
					}
					console.log(itemDetails.price);
					console.log(itemDetails.discount);
					var amount =Math.round( itemDetails.price - (itemDetails.discount * itemDetails.price/100));
					console.log(amount);
					console.log(itemDetails.bdaydiscount);
					var bdayamount = Math.round(amount - (itemDetails.bdaydiscount * amount)/100);
					console.log(bdayamount);
					if(birthday==1){
						console.log("birthday set");
						finalAmount=bdayamount;
					}else{
						finalAmount=amount;
					}
					console.log("final amount set:"+finalAmount);
		      $("#categoryName").html(itemDetails.subCategory.category.categoryName);
					$("#subCaregoryName").html(itemDetails.subCategory.subcategoryName);
					$("#itemName").html(itemDetails.listingName);
					$("#product_title").text(itemDetails.listingName);

					$("#product_id").text(" : " +itemDetails.itemId);

					$("#itemdescription").text("Description : "+ itemDetails.description);
					//geoplugin_currencyConverter(listings_json[i].price,geoplugin_currencyCode())

					$("#discountedprice").html("D-Price :   "+amount);

					$("#bdaydiscountedprice").html("Bday-Price :   "+bdayamount);

					$("#price-strike").html("M R P :  " + itemDetails.price);

					$("#discount").text("Discount: "+itemDetails.discount+"%");
					$("#bdaydiscount").text("B-Discount: "+itemDetails.bdaydiscount+"%");

					$("#listingquant").val(itemDetails.quantity);
					$("#listingdiscount").val(itemDetails.discount);
					$("#listingname").val(itemDetails.listingName);
					$("#itemid").val(itemDetails.itemId);
					$("#gotocart").hide();
					$("#buynow_incart").hide();
					if(getCookie("user_details")!="") {
						getCartId(ctxPath, itemDetails.itemId);
					}
					var img_data = "<div id='owl-single-product'>"+
					"    <div class='single-product-gallery-item' id='slide1'>"+
					"        <a data-lightbox='image-1' data-title='Gallery' href='"+imgServerURL+itemDetails.imgUrl+"'>"+
					"            <img class='img-responsive' alt='' style='display: block; object-fit: contain; width: 480px; height: 500px;' src='./images/blank.gif' data-echo='"+imgServerURL+itemDetails.imgUrl+"' />"+
					"        </a>"+
					"    </div>"+
					"</div>";
					console.log("image server url:"+imgServerURL);
					$("#gallery").html(img_data);

	// 				alert(JSON.stringify(itemDetails));

	                rating(ctxPath,itemDetails.user.id);
	                // get seller details and populate
					$.ajax({
						type : 'GET',
						contentType : 'application/json',
						url : ctxPath + "/users/" + itemDetails.user.id,
						dataType : "json", // data type of response
						success : function(seller_json)
						{
							var sellerData = "<div id='sellerData' style='color:green; font-size:15px'>Seller name:   "+seller_json.firstName+" "+seller_json.lastName+" (id: "+seller_json.email+" )</span>";
							$("#product-info").append(sellerData);
							//alert(seller_json.firstName+" "+seller_json.lastName);
							$("#sellername").val(seller_json.firstName+" "+seller_json.lastName);
						},
						error : function(){
							//alert("error");
						}
					});
					// get item attributes and populate
					$.ajax({
						type : 'GET',
						contentType : 'application/json',
						url : ctxPath + "/details/itemid/" + itemDetails.id,
						dataType : "json", // data type of response
						success : function(itemAttributes)
						{
							if(itemAttributes.length==0)
								$("#additionalDetails_div").hide();
							for (var i in itemAttributes)
							{
							  data = "<tr>"+
							  "<td>"+itemAttributes[i].attr_name+"</td>"+
							  "<td>"+itemAttributes[i].attr_val+"</td>"+
							  "</tr>";
							  $("#additionalDetails").append(data);
							}
						},
						error : function(){
							//alert("error");
						}
					});
				},
		    	error:function() {
		        	//alert("error occurred");
		    	}
			});
	});

	setWishlistColor();


	function setWishlistColor() {
		  var id = isInWishlist();
		  console.log("wishlistcolor: " + id);
		  if(id < 0) {
		    $("#wishlistHeart").css({"color" : "black"});
		  } else {
		    $('#wishlistHeart').css({"color" : "red"});
		  }
		}

		function toggleWishlist() {

		  var id = isInWishlist();
		  if(id > 0) {
		    $.ajax({
		      type : 'DELETE',
		        async : false,

		      url : ctxPath + "/wishlist/delete/" + id
		    });
		  } else {
		    $.ajax({
		      type : 'POST',
		      url : ctxPath + "/wishlist/create",
		        async : false,

		      contentType : 'application/json',
		      data : wishlistToJSON()
		    });
		  }
		  setWishlistColor();
		}
		var myval;

		function wishlistToJSON() {
		  var itemDetails = itemToJSON();
		  console.log("anirudh yaha hai output ="+itemDetails);
		  itemDetails = JSON.parse(itemDetails);
		  var wishlist = JSON.stringify({
		      "item" : {"id":iitteemm.id},
		      "user" : {"id":JSON.parse(getCookie("user_details")).id},
		      "quantity":{"quantity":myval}
		      
		  });
		  console.log("A"+wishlist);
		  return wishlist;
		}

		function isInWishlist() {
			  var itemDetails = JSON.parse(itemToJSON());
			  var userId = JSON.parse(getCookie("user_details")).id;
			  // var itemId = iitteemm.id;
				var itemId = "<%=request.getParameter("id")%>";
				console.log(userId + " " + itemId);
				var res = -1;
				$.ajax({
			    type : 'GET',
		        async : false,
			    url : ctxPath + "/wishlist/isInWishlist/" + userId + "/" + itemId,
			    success : function(data) {
				    console.log("uttu "+JSON.stringify(data));
				    console.log("pra" + data.id);
			      if (data){ console.log("if " + data.id);  res = data.id;}
			    }
			  });
				  return res;
			}

	function getCartId(ctxPath, itemId)
	{
		// console.log("getCartId() " + ctxPath + " " + itemId);
		console.log(iitteemm);
		$.ajax(
			{
				type : 'GET',
				url : ctxPath + "/cart/user/listingid/" + itemId + "/"+JSON.parse(getCookie("user_details")).id,
				success : function(cart,status,code)
				{
					 console.log(JSON.stringify(cart) + "\n" + status + "\n" + JSON.stringify(code));

					cartCheck(code.status);
				},
				error: function(err)
				{
					//swal(JSON.stringify(err));
				}
		});
	}

	
	function cartCheck(status){
		if(JSON.stringify(status)!="204" && ($("#available").text()!="Out of Stock"))
		{
			$("#addtocart").hide();
			$("#gotocart").show();
			$("#buynow_incart").show();
			$("#buynow").hide();

		}
	}

	$("#quant-up").click( function(){
		$("#quantwarning").hide();
		var value = $("#quantity").val();
		var available_quant = $("#available_quant").text();
		if(parseInt(value)<parseInt(available_quant))
		{
			value++;
			$("#quantity").val(value);
			$("#quant").val(value);
		}
		else {
			
			$("#quantwarning").text("Only "+available_quant+" items are available in stock");
			$("#quantwarning").show();
		}
	});

	$("#quantity").keyup( function()
	{
		var value = $("#quantity").val();
		console.log("output1= "+value);
		var available_quant = $("#available_quant").text();
		console.log("output2= "+available_quant);
		if(parseInt(value)>parseInt(available_quant))
		{
			myval= parseInt(value)-parseInt(available_quant);
			console.log("anirudh paratp SIngh ="+myval);
			toggleWishlist();
			/* $("#quantity").val(available_quant);
			$("#quantwarning").text("Only "+available_quant+" items are available in stock");
			$("#quantwarning").show(); */
			$("#quantity").val(myval);
		}
		
	});
	
	$("#quant-down").click(function(){
		$("#quantwarning").hide();
		var value = $("#quantity").val();
		if(parseInt(value)>1)
		{
			value--;
			$("#quantity").val(value);
			$("#quant").val(value);
		}
	});

	// get all deals on the item
	/*function getDealDetails(ctxPath){
		var id = "<%=request.getParameter("id")%>";
		$.ajax({
			type : 'GET',
			async:false,
			url : ctxPath + "/deals/item/"+id,
			dataType : "json", // data type of response
			success : function(deal){
				var jsonDeal = JSON.stringify(deal);
				if(jsonDeal !="[]"){
					$("#dealid").val(deal[0].dealid);
					getDealName(ctxPath);
				}
				else {
					$("#dealid").val(0);
				}
			},
			error: function(){
				//alert("error occurred");
			}
		});
	}

	function getDealName(ctxPath){
		//alert($("#dealid").val());
		if($("#dealid").val()!=""){
			var dealid = $("#dealid").val();
			$.ajax({
				type : 'GET',
				async:false,
				url : ctxPath + "/deals/"+dealid,
				dataType : "json", // data type of response
				success : function(deal){
					$("#dealname").html("SUPER DEAL: "+deal.dealname+"!"+"&nbsp; &nbsp;");
					if(deal.dealname == "15% Cashback" || deal.dealname == "50% off"){
					}
					else {
						$("#dealname").append("<a class='btn btn-primary' href='offerZoneDeal.jsp?id="+dealid+"'> Avail Deal </a>");
					}
				},
				error: function(){
					//alert("error occurred");
				}
			});
		}
	}*/

	function checkLogin()
	{
		if(getCookie("user_details")=="")
		{
			swal("Please Login");
			return false;
		}
	}

	function itemToJSON()
	{
		var itemId = $("#itemid").val();
		var quant = $("#quantity").val();
		var dealId = $("#catId").val();
		var cartDetails;
		console.log(dealId);
		console.log(typeof dealId);
		if(0 == parseInt(dealId)){
			cartDetails = JSON.stringify({
			    "itemId" : itemId,
			    "quantity" : quant
			});
		}
		else {
			cartDetails = JSON.stringify({
			    "itemId" : itemId,
			    "quantity" : quant,
			    "deal" : {"id" : dealId}
			});
			}
		console.log(cartDetails);

		return cartDetails;
	}

	function successCart(){
		swal("Item added to your cart!");
		$("#addtocart").hide();
		$("#gotocart").show();
	}

	function addToCart()
	{
		if(getCookie("user_details")=="")
		{
			swal("Please Login");
			return false;
		}
		$.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/cart/create/" + JSON.parse(getCookie("user_details")).id,
				data : itemToJSON(),
				success : successCart(),
				error: function() {
					
				}
		});
	}

	function rating(ctxPath,id)
	{
		$.ajax({
			type : 'GET',
			url : ctxPath + "/reviews/seller/"+id,
			dataType : "json", // data type of response
			success : function(results){
				if(results.length==0)
					{
					   $("#seller_rating").hide()
					   $('#seller_rating_total').hide()
					   $('#seller_rating_customers').hide()
					   $("#seller_rating_unavailable").show()
					}
				else
					{
					   var sum=0;
					   for(var i in results)
						   sum = sum + results[i].stars
						   var val = sum/results.length;
					   var data = "<span> ( </span> <span>"+val+" stars</span>";
					   $('#seller_rating_total').append(data);
					   data = "</span><span> / </span><span>"+results.length+" customer ratings</span> <span> ) </span>";
					   $('#seller_rating_customers').append(data);
					   // var val = Math.round(sum/results.length);
					   //renderSeller(val);
						 $('#rateit10').rateit('value', val);
						 $('#rateit10').rateit('readonly', 1);
						 console.log("rating : " + val);
					}
			},
			error: function(){
				//alert("error occurred");
			}
		});
	}
	/*function renderSeller(val)
	{
		var color;
		if(val<=2)
			color = "red";
		else if(val<=4)
			color = "orange";
		else
			color = "green";
		var stars =$("#seller_rating").find("span");
		var i;
		for(i=1;i<val+1;i++)
			{
			   $(stars[i]).css('color',color);
			}
		for(;i<6;i++)
		{
		   $(stars[i]).css('color','black');
		}
	}*/

	function getDealDetails(ctxPath){
		var listingid = "<%=request.getParameter("id")%>";
		console.log("mai yaha hu bhai "+listingid);
		$.ajax({
			type : 'GET',
			async:false,
			url : ctxPath + "/listingDealsNew/listing/"+listingid,
			dataType : "json", // data type of response
			success : function(deal){
				var jsonDeal = JSON.stringify(deal);
				if(jsonDeal !="[]"){
					$("#dealid").val(deal[0].id);
					getDealName(ctxPath);
				}
				else {
					$("#dealid").val(0);
				}
			},
			error: function(){
				//alert("error occurred");
			}
		});
	}

	function getDealName(ctxPath){
		//alert($("#dealid").val());
		if($("#dealid").val()!=""){
			var dealid = $("#dealid").val();
			console.log("deal id ="+dealid);
			$.ajax({
				type : 'GET',
				async:false,
				url : ctxPath + "/listingDealsNew/"+dealid,
				dataType : "json", // data type of response
				success : function(deal){
					
					var mystartdate=Date.parse(deal.startDate)
					var myenddate=Date.parse(deal.endDate)
					console.log("yaha deal end date hai"+deal.endDate);
					
					console.log("yaha deal data1 hai"+mystartdate);
					console.log("yaha deal data2 hai"+mystartdate);
					var today = new Date();
					console.log("aj ki date hai"+today);
					
					if(mystartdate <= today && today <= myenddate){
					$("#dealname").html("SUPER DEAL: "+deal.dealName+"!"+"&nbsp; &nbsp;");
					if(deal.dealName == "15% Cashback" || deal.dealName == "50% off"){
					}
					else {
						$("#dealname").append("<a class='btn btn-primary' href='offerZoneDeal.jsp?id="+deal.dealNew.id+"'> Avail Deal </a>");
					}
					}
				},
				error: function(){
					//alert("error occurred");
				}
			});
		}
	}
	
	
	
	
	
	
	function setDeals()
	{
		var itemId=  <%=request.getParameter("id")%>;
		console.log("itemId:"+itemId);
		console.log("sett deals function");
	  $.ajax(
	  {
	    type : 'GET',
	    contentType : 'application/json',
	    url : ctxPath + "/deals/item/"+itemId,
	    dataType : "json", // data type of response
	    success : function(result){
				
				var data2="<div id=-1 hidden>"+"0"+"</div>";
	      var data="<select id='catId' name='catId'>"+"<option value=' "+0+" '>Select a Deal</option>";
	            for(var i in result){
	            	console.log("Result:---------------"+result[i]);
	               data+="<option value='"+result[i].id+"'>"+result[i].description+"</option>";
								 data2+="<div id="+result[i].id+" hidden>"+result[i].discount+"</div>";
	            }
	            data += "</select>"+data2;
							console.log(data);
	            $('#cat-content').html(data);
	      },
	      error:function() {
	          //swal("error occurred");
	      }
	  });
	}
	// $('select').on('change', function () {
	//      console.log("on");
	// });

	$("#applyDeal").click(function(){

		console.log("apply deal");
		var dealId = $("#catId").val();
		console.log("dealid:"+dealId);
		var id="#"+dealId;
		console.log(id);
		var discount=parseInt($(id).text());
		var amount=parseInt(finalAmount);
		console.log("finalAmount:"+amount+" "+finalAmount);
		$('#dealid').val(dealId);
		$('#dealdiscount').val(discount);
		//console.log("dicount:"+discount);
		//console.log("birthday:"+birthday);
		//console.log("price:"+price);
		//console.log("discount:"+dis);
		//console.log("bdiscount:"+bDis);
		//console.log("deal discount:"+discount);
		var finalPrice=Math.round(amount-(discount*amount)/100);
		console.log("finalPrice:"+finalPrice);
		document.getElementById("dealdiscountprice").innerHTML= "Deal Price : &#x20b9;" + finalPrice;
		/*if(birthday==1){
			//console.log("birthday:"+bmrp);
			//$("#dealdiscountprice").html(bmrp);
			console.log("birthday");
			var totalDiscount=parseInt(parseInt(discount)+parseInt(dis)+parseInt(bDis));
			console.log(totalDiscount);
			var finalPrice = Math.round(price - (totalDiscount*price)/100);
			console.log(finalPrice);
			document.getElementById("dealdiscountprice").innerHTML= "Deal Price : &#x20b9;" + finalPrice;
		}else{
			//console.log("amount:"+mrp);
			var totalDiscount=parseInt(parseInt(discount)+parseInt(dis));
			var finalPrice=Math.round(price - (totalDiscount*price)/100);
			console.log(finalPrice);
			document.getElementById("dealdiscountprice").innerHTML= "Deal Price : &#x20b9;" + finalPrice;*/
		//	$("#dealdiscountprice").html(mrp);
	});
	/*function setDealDiscount()
	{
		//var dealName = $("#dealName").val();
		console.log("setDealDiscount");
		var dealId = $("#catId").val();
		console.log("dealid:"+dealId);
		var id="#"+dealId;
		var discount=$(id).value;
		console.log("dicount:"+discount);
		// var discountprice=$("#discountedprice").text();
		// console.log("D:"+discountprice);
		// var bdayprice=$("#bdaydiscountedprice").text();
		// console.log("B:"+bdayprice);

	}
	function addItemtoDeal(){
	  console.log(formToJSON());
	  $.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/dealItems/addItem",
				data : formToJSON(),
				success : render(),
				error: function() {
					swal(JSON.stringify(err));
				}
		});
	}*/

</script>
</html>
