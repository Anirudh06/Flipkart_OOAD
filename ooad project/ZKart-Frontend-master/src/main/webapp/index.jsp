<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties" %>
<% AccessProperties ap = new AccessProperties(); %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Welcome to Flipkart</title>
	<script src="global.js"></script>
	
</head>
<body>
    <%@include file="header.jsp" %>


	<!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class="container">
			<div class="row">
			
			<!-- BDAY message -->
			<div style="left: 60px; position:relative;">
            <h5 class="section-title"><label id="userID"></label><label id="bday"></label></h5>
                       </div>

				<!-- ============================================== CONTENT ============================================== -->
				<div class="homebanner-holder">
					<!-- ========================================== SECTION – HERO ========================================= -->

					<div id="hero">
						<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
							<div class="item"
								style="background-image: url(./images/cat-banner-1.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Top Clothing Brands</div>
										<div class="big-text fadeInDown-1">Get 50% off!</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>Formal wear, Long kurtas and so many more!</span>
										</div>
										<div class="button-holder fadeInDown-3">
											<a href="underConstruct.html"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div>
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

							<div class="item"
								style="background-image: url(./images/fashion-banner.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Women Fashion Spring 2018</div>
										<div class="big-text fadeInDown-1">
											<span class="highlight">Buy 3 Get 1 !</span>
										</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>New Spring collection! Floral designs and more!</span>
										</div>
										<div class="button-holder fadeInDown-3">
											<a href="underConstruct.html"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div>
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

						</div>
						<!-- /.owl-carousel -->
					</div>

					<!-- ========================================= SECTION HERO : END ========================================= -->

					<!-- ============================================== INFO BOXES ============================================== -->
					<div class="info-boxes wow fadeInUp">
						<div class="info-boxes-inner">
							<div class="row">
								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">money back</h4>
											</div>
										</div>
										<h6 class="text">15 Days Money Back Guarantee</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="hidden-md col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">low cost shipping</h4>
											</div>
										</div>
										<h6 class="text">
											Shipping at nominal charges of <i class="fa fa-rupee-sign"></i>50
										</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">Special Sale</h4>
											</div>
										</div>
										<h6 class="text">
											Checkout Offers Zone
										</h6>
									</div>
								</div>
								<!-- .col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.info-boxes-inner -->

					</div>
					<!-- /.info-boxes -->
					<!-- ============================================== INFO BOXES : END ============================================== -->
					<!-- ============================================== SCROLL TABS ============================================== -->
					<div id="product-tabs-slider"
						class="scroll-tabs outer-top-vs wow fadeInUp" style="border-radius: 35px;">
						<div class="more-info-tab clearfix ">
							<h3 class="new-product-title pull-left">New Products</h3>
							<ul class="nav nav-tabs nav-tab-line pull-right"
								id="new-products-categories">
								<li class="active"><a data-transition-type="backSlide"
									href="#all" onclick="newProductsAll()" data-toggle="tab">All</a></li>
							</ul>
							<!-- /.nav-tabs -->
						</div>
						<div class="tab-content outer-top-xs">
							<div class="tab-pane in active" id="all">
								<div class="product-slider">
									<div id="new-products-all"
										class="owl-carousel home-owl-carousel custom-carousel owl-theme"
										data-item="4">

										<div id="prod0" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image " >
															<a id="productImg0" href="#"><img id="productImage0" style="border-radius: 50%;"  border-radius="30%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
															<div class="product-info text-center">
														<h3 class="name">
															<a id="productName0" href="#"></a>
														</h3>
														<div id="rateit10" class="rateit" data-rateit-readonly="true"    style="font-size:15px"></div>
														<div class="description"></div>
														<div id="ps0"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice0"></span> <span id="discPrice0"></span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice0"> <span
																id="bdayactualPrice0"></span> <span class="price">
																 <span id="bdaydiscPrice0"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<!--<li class="add-cart-button btn-group"><a class="add-to-cart"
																	href="underConstruct.html" title="Add to Cart">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		 <i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																	</a>
																</li> 
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod1" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg1" href="#"><img id="productImage1" style="border-radius: 50%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName1" href="#"></a>
														</h3>
														<div id="rateit11" class="rateit" data-rateit-readonly="true"    style="font-size:5px"></div>
														<div class="description"></div>
														<div id="ps1"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice1"></span> <span class="price"> <span id="discPrice1"></span>
															</span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice1"> <span
																id="bdayactualPrice1"></span> <span class="price"> <span id="bdaydiscPrice1"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<!-- <li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		 <i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod2" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg2" href="#"><img id="productImage2" style="border-radius: 50%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName2" href="#"></a>
														</h3>
														<div id="rateit12" class="rateit" data-rateit-readonly="true"    style="font-size:5px"></div>
														<div class="description"></div>
														<div id="ps2"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice2"></span> <span class="price"><span id="discPrice2"></span>
															</span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice2"> <span
																id="bdayactualPrice2"></span> <span class="price"><span id="bdaydiscPrice2"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>

													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
															<!-- 	<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		 <i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod3" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg3" href="#"><img id="productImage3"  style="border-radius: 50%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName3" href="#"></a>
														</h3>
														<div id="rateit13" class="rateit" data-rateit-readonly="true"    style="font-size:5px"></div>
														<div class="description"></div>
														<div id="ps3"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice3"></span> <span class="price"><span id="discPrice3"></span>
															</span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice3"> <span
																id="bdayactualPrice3"></span> <span class="price"><span id="bdaydiscPrice3"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>

													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<!-- <li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod4" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg4" href="#"><img id="productImage4" style="border-radius: 50%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName4" href="#"></a>
														</h3>
														<div id="rateit14" class="rateit" data-rateit-readonly="true"    style="font-size:5px"></div>
														<div class="description"></div>
														<div id="ps4"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice4"></span> <span class="price"> <span id="discPrice4"></span>
															</span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice4"> <span
																id="bdayactualPrice4"></span> <span class="price"><span id="bdaydiscPrice4"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>

													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<!-- <li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		 <i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->


										<div id="prod5" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg5" href="#"><img id="productImage5" style="border-radius: 50%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName5" href="#"></a>
														</h3>
														<div id="rateit15" class="rateit" data-rateit-readonly="true"    style="font-size:5px"></div>
														<div class="description"></div>
														<div id="ps5"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice5"></span> <span class="price"><span id="discPrice5"></span>
															</span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice5"> <span
																id="bdayactualPrice5"></span> <span class="price"><span id="bdaydiscPrice5"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>

													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
															<!-- 	<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		 <i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li><!-- 
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod6" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg6" href="#"><img id="productImage6" style="border-radius: 50%;" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName6" href="#"></a>
														</h3>
														<div id="rateit16" class="rateit" data-rateit-readonly="true" style="font-size:5px"></div>
														<div class="description"></div>
														<div id="ps6"></div>
														<div class="product-price">
															<span class="price"> <span
																id="actualPrice6"></span> <span class="price"> <span id="discPrice6"></span>
															</span>
															</span>
														</div>
														<div class="product-price">
															<span class="price" id="bdayprice6"> <span
																id="bdayactualPrice6"></span> <span class="price"><span id="bdaydiscPrice6"></span>
															</span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>

													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
															<!-- 	<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		 <i class="fa fa-shopping-cart" ></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>-->
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
									</div>
									<!-- /.home-owl-carousel -->
								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.tab-pane -->

						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.scroll-tabs -->
					<!-- ============================================== SCROLL TABS : END ============================================== -->

					<!-- ============================================== CATEGORY WISE COROSALS + TABS ============================================== -->


				<span id="categoryWiseCarouselSpan">	
					
				</span>







				</div>
			</div>
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


						

						document.getElementById("categoryWiseCarouselSpan").innerHTML=str;
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
<link href="rateit/rateit.css" rel="stylesheet" type="text/css">
<script src="rateit/jquery.rateit.min.js" type="text/javascript"></script>
</html>
