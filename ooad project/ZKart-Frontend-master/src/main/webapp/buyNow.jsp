<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <style>
    .progress-class
    {
    	color:green;
    	text-align:center;
    }
    </style>
	<%@include file="metaContent.jsp" %>
	<title>Place Order</title>
	<script src="global.js"></script>

</head>
<body>
    <%@include file="header.jsp" %>

   <div class="body-content">
	<div class="container">
		<div class="checkout-box ">
			<div class="row" style="margin-top:20px">
				<div class="col-md-8">
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
						<div  id="login_panel" class="login-class panel panel-default checkout-step-01" >
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse1" data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
						          <span>1</span>Login
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->

							<div id="collapseOne" class="panel-collapse collapse in">

								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">

										<!-- guest-login -->
										<div class="col-md-6 col-sm-6 guest-login">

											<h4 class="checkout-subtitle">Register or Login</h4>
											<h4 class="checkout-subtitle outer-top-vs">Register and save time</h4>
											<p class="text title-tag-line ">Register with us for future convenience:</p>

											<ul class="text instruction inner-bottom-30">
												<li class="save-time-reg">- Fast and easy check out</li>
												<li>- Easy access to your order history and status</li>
											</ul>

											<button type="button" class="btn-upper btn btn-primary checkout-page-button checkout-continue " onclick="return buynowsignup();">Continue</button>
										</div>
										<!-- guest-login -->

										<!-- already-registered-login -->
										<div class="col-md-6 col-sm-6 already-registered-login">
											<h4 class="checkout-subtitle">Already registered?</h4>
											<p class="text title-tag-line">Please log in below:</p>
											  <button type="button" class="btn-upper btn btn-primary checkout-page-button" onclick="return buynowvalidation();">Login</button>
										</div>
									<!-- already-registered-login -->

								</div>
							</div>
							<!-- panel-body  -->

							</div><!-- row -->


						</div>
						<!-- End checkout-step-01  -->


						<!-- checkout-step-02  -->
						<div id="address_panel" class="panel panel-default checkout-step-02">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse2" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
						          <span>2</span>Shipping Address
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->

							<div id="collapseTwo" class="panel-collapse collapse">

								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">

						      <div class="panel-body">
							      <textarea rows="4" style="width:100%" id="shipAddress" required>
	                              </textarea>
	                              <div class="row">
		                              <div class="col-md-3"><button type="button"
		                              class="btn btn-primary" onclick="orderSummary()">Next</button></div>

		                              <div class="col-md-3 pull-right" style="margin-top:5px;color:red"
		                              id="addrWarning" hidden="hidden">Please enter address</div>
		                          </div>
							  </div>
								</div>
							</div>
							<!-- panel-body  -->

							</div><!-- row -->


						</div>
						<!-- End checkout-step-02  -->


						<!-- checkout-step-03  -->
						<div id="summary_panel" class="panel panel-default checkout-step-03">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse3" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseThree">
						          <span>3</span>Order Summary
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->

							<div id="collapseThree" class="panel-collapse collapse">

								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">

								  <div class="table-responsive">
									  <table id="order_table" class="table">
									  <thead>
								    	<tr align="center">
								    		<th>Item Name</th>
								    		<th>Quantity</th>
								    		<th>Marked Price</th>
								    		<th id="discountField">Discount</th>
								    		<th>Discounted Price</th>
                        <th>Deal Discount</th>
                        <th>Final Price</th>
								    		<th style="color:green">Seller Name</th>
										</tr>
								    	</thead>
								    	<tbody id="orderSummary_body">
								    	<tr>
								    		<th>Delivery Charges: </th>
								    		<td id="calc">&#8377; 50 for each Unique Item.</td>
								    		<td></td>
                        <td></td>
                        <td></td>
								    		<th>Total Price:</th>
								    		<th id="total_th">0</th>
								    	</tr>
								    	</tbody>
								    </table>
							    </div>

	                              <div class="row">
		                            <div class="col-md-3">
		                              <button id="confirmOrder" type="button" class="btn btn-success" style='margin:0px 10px 10px 10px'
		                              onclick="return insertOrders()">Confirm Order</button>
									</div>
		                            <div class="col-md-3 pull-right" style="margin-top:5px;color:red"
		                              id="orderWarning" hidden="hidden">Please Confirm the order</div>
		                          </div>
                            </div>
							</div>
							<!-- panel-body  -->

							</div><!-- row -->


						</div>
						<!-- End checkout-step-03  -->


						<!-- checkout-step-04  -->
						<div id="payment_panel" class="panel panel-default checkout-step-04">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse4" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseFour">
						          <span>4</span>Payment Options
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->

							<div id="collapseFour" class="panel-collapse collapse">

								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row" style="margin-top:10px">

      <div class="col-md-3 sidebar">
        <div class="sidebar-module-container">
          <div class="sidebar-filter">
        <!-- /.side-menu -->
        <div class="side-menu outer-bottom-xs">
			<div class="sidebar-widget">
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a onclick='ZKartBank()'>ZKart Bank</a>
<!--                   <input type="radio" name="paymenttype" value="ZKartBank" checked> -->
                  </h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
          <!-- /.megamenu-horizontal -->
        </div>
        <!-- /.side-menu -->
          </div>
          <!-- /.sidebar-filter -->
        </div>
        <!-- /.sidebar-module-container -->
      </div>
      			<div class="col-md-9">
      			<div class="row">
			      <div class="col-md-6 sidebar">
			      		<label>Account Number</label>
		              <input type="number" class="form-control input-lg"  name="accountno" id="accountno" required>
		          </div>
			      <div class="col-md-6 sidebar">
			      		<label>Pin</label>
		              <input type="password" maxlength="4" class="form-control input-lg"  name="pin"  id="pin" required>
		          	</div>
		         </div>
      			<div class="row">
		               <div style="margin-top:5px;margin-left:15px;color:red" hidden="hidden"
		                              id="accWarning">Please enter account no. and pin</div>
		         </div>
		                          </div>
  				<input type="submit" class="btn btn-primary" value="Proceed to pay" id="proceed"
  									onclick="proceedToPay()">
									</div>
							</div>
							<!-- panel-body  -->

							</div><!-- row -->


						</div>
						<!-- End checkout-step-04  -->
					</div><!-- /.checkout-steps -->



				</div>


				<div class="col-md-4">
					<!-- checkout-progress-sidebar -->
					<div class="checkout-progress-sidebar ">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
							    	<h4 class="unicase-checkout-title">Your Checkout Progress</h4>
							    </div>
							    <div class="">
									<ul id="orderProgress" class="nav nav-checkout-progress list-unstyled">
										<li><a href="#" class="progress-class"><b>Order In Progress</b></a></li>
										<li hidden="hidden" id="arrow_order" ><a href="#" class="progress-class glyphicon glyphicon-arrow-down"></a></li>
										<li hidden="hidden" id="orderStatus"><a href="#" class="orderPlaced progress-class"><b>Order Placed</b></a></li>
										<li><a href="#" hidden="hidden" id="arrow" class="progress-class glyphicon glyphicon-arrow-down"></a></li>
										<li><a href="#" hidden="hidden" id="payStatus" class="progress-class"><b id="paymentStatus"></b></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- checkout-progress-sidebar -->
				</div>
			</div>
		</div>
	</div>

     </div>


    <%@include file="footer.jsp" %>

</body>
<script>

	var birthday = 0;
	var deliveryCharges = 50;

	$(document).ready(function() {
		checklogin();
		$("#arrow_order").hide();
		$("#orderStatus").hide();
	    var listingid = "<%=request.getParameter("listingid")%>";
		headerFunctions(ctxPath);
		var user = getCookie("user_details");
	    if (user == "")
	    {
	    	swal("Please Login");
	    	document.location.href="index.jsp";
	    }

	    // check if birthday
	    userDetails = JSON.parse(user);
	    console.log(userDetails);
	    var userdob = userDetails.dob;
		console.log(userdob);
		if (userdob != null) {
			var curDate = new Date();
			var DOB = new Date(userdob);
			if ( curDate.getDate() == DOB.getDate() && curDate.getMonth() == DOB.getMonth()) {
        console.log("birthda ys et on ready");
				birthday = 1;
				$("#discountField").html("Birthday Discount");
			}
		}
		show_Welcome();
		if(listingid != "0") {
			displayOrderSummary(listingid);
		} else {
			fetchCart();
		}
	});


	function fetchCart()
	{
		var user = getCookie("user_details");
		user = JSON.parse(user);
		var userId = user.id;
		$.ajax({
					type : 'GET',
					contentType : 'application/json',
					url : ctxPath + "/cart/user/" + userId,
					success : function(cartDetails) {
						for(i = 0; i < cartDetails.length; i++) {
							dispOrders(cartDetails[i],i);
						}
						$("#total_th").html(parseInt($("#total_th").text()) + cartDetails.length * deliveryCharges);
					},
					error: function(err) {
						swal(JSON.stringify(err));
					}
			});
	}

	function dispOrders(cartDetails, i)
	{
		var user = getCookie("user_details");
		user = JSON.parse(user);
		var userId = user.id;
		$.ajax({
					type : 'GET',
					contentType : 'application/json',
					url : ctxPath + "/item/item/"+cartDetails.itemId,
					success : function(itemDetails)
					{
						if(itemDetails.quantity > 0)
						{
							      /*if (birthday == 1)
								itemDetails.discount = itemDetails.discount + itemDetails.bdaydiscount;*/
                var dealApplied=1;
                if(cartDetails.deal==null){
                  dealApplied=0;
                  console.log("no deal for items");
                }else{
                  console.log("deal id:"+cartDetails.id);
                }
							var actualPrice = Math.round(itemDetails.price - (itemDetails.discount*itemDetails.price/100));
              console.log("actualPrice:"+actualPrice);
              console.log(cartDetails);
              if(birthday==1){
                console.log("birthday set dispOrders");
                actualPrice=Math.round(actualPrice-(actualPrice*itemDetails.bdaydiscount)/100);
              }
              var dealDiscount=0;
              var dealPrice=actualPrice;
              if(dealApplied==1){
                dealDiscount=parseInt(cartDetails.deal.discount);
                console.log("dealDiscount: " + dealDiscount);
                dealPrice = Math.round(actualPrice - (dealDiscount)*actualPrice/100);
                //dealPrice=Math.round(actualPrice-actualPrice*dealDiscount/100);;
                console.log("deal Discount:"+dealDiscount);
                console.log("deal Price:"+dealPrice);
              }
              console.log("deal Price:"+dealPrice);
							$.ajax({
								type : 'GET',
								contentType : 'application/json',
								url : ctxPath + "/users/"+itemDetails.user.id,
								success : function(seller_json){

									var total = parseInt($("#total_th").text());

									// if (itemDetails.quantity < cartDetails.quantity) {
									// 	swal(itemDetails.listingName + " has " + itemDetails.quantity + " pieces in stock only.");
									// 	return;
									// }

									var newQuant = itemDetails.quantity - cartDetails.quantity;
                  var table_data= "<tr id='" + i + "' style='text-align: left'>" +
								    	"	<td>"+itemDetails.listingName+
								    	"<input type='number' id='listingid"+i+"' value='"+itemDetails.id+"' hidden='hidden'>"+
								    	"<input type='text' id='itemid"+i+"' value='"+itemDetails.itemId+"' hidden='hidden'>"+
								    	"<input type='number' id='new_quant"+i+"' value='"+newQuant+"' hidden='hidden'>"+
								    	"<input type='number' id='cartid"+i+"'  value='"+cartDetails.id+"' hidden='hidden'>"+
								    	"</td>"+
								    	"	<td id='quant"+i+"'>"+cartDetails.quantity+"</td>"+
								    	"	<td>"+itemDetails.price+"</td>" +
								    	 "	<td>" + (itemDetails.discount) + "%</td>" +
								    	 "	<td id='price"+i+"' class='classPrice'>"+actualPrice+"</td>"+
                       "	<td>" + "No deal Applied" + "%</td>" +
                       "	<td id='deal"+i+"'>" + actualPrice + "</td>" +
								    	"	<td class='pull-right' style='text-align: right;color:green'>"+
								    	seller_json.firstName+" "+seller_json.lastName+"</td>"+
								    	"</tr>";
                    if(dealApplied==1){
                      table_data = "<tr id='" + i + "' style='text-align: left'>" +
    								    	"	<td>"+itemDetails.listingName+
    								    	"<input type='number' id='listingid"+i+"' value='"+itemDetails.id+"' hidden='hidden'>"+
    								    	"<input type='text' id='itemid"+i+"' value='"+itemDetails.itemId+"' hidden='hidden'>"+
    								    	"<input type='number' id='new_quant"+i+"' value='"+newQuant+"' hidden='hidden'>"+
    								    	"<input type='number' id='cartid"+i+"'  value='"+cartDetails.id+"' hidden='hidden'>"+
    								    	"</td>"+
    								    	"	<td id='quant"+i+"'>"+cartDetails.quantity+"</td>"+
    								    	"	<td>"+itemDetails.price+"</td>" +
    								    	 "	<td>" + (itemDetails.discount) + "%</td>" +
    								    	 "	<td id='price"+i+"' class='classPrice'>"+actualPrice+"</td>"+
                           "	<td>" + cartDetails.deal.discount + "%</td>" +
                           "	<td id='deal"+i+"'>" + dealPrice + "</td>" +
    								    	"	<td class='pull-right' style='text-align: right;color:green'>"+
    								    	seller_json.firstName+" "+seller_json.lastName+"</td>"+
    								    	"</tr>";
                    }
								    	$("#orderSummary_body").prepend(table_data);
								    	total = total + (dealPrice*cartDetails.quantity);
								    	$("#total_th").html(total);
							    	// if(total < 1000){
							    	// 	$("#calc").html("50");
							    	// 	total += 50;
							    	// 	//alert(total)
							    	// 	$("#total_th").html(total);
							    	// }
								},
								error: function(err)
								{
									swal(JSON.stringify(err));
								}
							});
						}
					},
					error: function(err)
					{
						swal(JSON.stringify(err));
					}
			});
	}

	function displayOrderSummary(id)
	{
		var total = parseInt($("#total_th").text());
		var user = getCookie("user_details");
		user = JSON.parse(user);
		var userId = user.id;
    	var dealDiscount="<%=request.getParameter("dealdiscount")%>"
    	console.log("Dealdiscount: " + dealDiscount);
    	if(isNaN(dealDiscount) || dealDiscount == "") dealDiscount = 0;
		$.ajax(
				{
					type : 'GET',
					contentType : 'application/json',
					url : ctxPath + "/item/"+id,
					success : function(itemDetails)
					{
            var discount12=parseInt(itemDetails.discount)+parseInt(dealDiscount);
						/*if (birthday == 1){
              discount12 += parseInt(itemDetails.bdaydiscount);
              itemDetails.discount = itemDetails.discount + itemDetails.bdaydiscount;
            }*/

						var actualPrice = Math.round(itemDetails.price - (itemDetails.discount*itemDetails.price/100));
            if(birthday==1){
              console.log("birthday set");
              actualPrice=Math.round(actualPrice-(actualPrice*itemDetails.bdaydiscount)/100);
            }
            console.log("actual Price:"+actualPrice);
            console.log("discount:"+dealDiscount);
            var quantity="<%=request.getParameter("quant")%>";
            console.log(quantity);
            var deliveryCharge=50;
            var dealPrice=Math.round(parseInt(actualPrice-(actualPrice*dealDiscount)/100));
            var total=actualPrice*quantity+deliveryCharge;
            if(dealDiscount>0){
              total=dealPrice*quantity+deliveryCharges;
            }
            console.log("deal Price:"+actualPrice);
            console.log("total:"+total);
						$.ajax(
								{
									type : 'GET',
									contentType : 'application/json',
									url : ctxPath + "/users/"+itemDetails.user.id,
									success : function(seller_json)
									{
								    	//alert("Listing quant: "+ itemDetails.quantity);
										var table_data =  	"<tr id='0' style='text-align: left'>"+
								    	"	<td>"+itemDetails.listingName+
								    	"<input type='number' id='listingid0' value='"+itemDetails.id+"' hidden='hidden'>"+
								    	"<input type='text' id='itemid0' value='"+itemDetails.itemId+"' hidden='hidden'>"+
								    	"<input type='number' id='new_quant0' value='"+itemDetails.quantity+"' hidden='hidden'>"+
								    	"<input type='number' id='cartid0' hidden='hidden'>"+
								    	"</td>"+
								    	"	<td id='quant0'>"+quantity+"</td>"+
								    	"	<td>"+itemDetails.price+"</td>" +
								    	 "	<td>" + (itemDetails.discount) + "%</td>" +
								    	"	<td id='price0' class='classPrice'>"+actualPrice+"</td>"+
                       "	<td>" + dealDiscount + "%</td>";
                       if(dealDiscount==0){
                    	   table_data+="	<td id='deal0'>" + actualPrice + "</td>";
                       }else{
                    	   table_data+="	<td id='deal0'>" + dealPrice + "</td>";
                       }

                       table_data+=
								    	"	<td class='pull-right' style='text-align: right;color:green'>"+
								    	seller_json.firstName+" "+seller_json.lastName+"</td>"+
								    	"</tr>";
								    	$("#orderSummary_body").prepend(table_data);
									},
									error: function(err)
									{
										swal(JSON.stringify(err));
									}
							});
              $("#total_th").html(total);
              var curr_quant = $("#new_quant0").val();
              $("#new_quant0").val(curr_quant - quantity);
						/*$.ajax({
									type : 'GET',
									contentType : 'application/json',
									url : ctxPath + "/cart/user/listingid/"+itemDetails.itemId+"/"+userId,
									success : function(cartDetails)
									{
										var curr_quant = $("#new_quant0").val();
								    	//alert("Curr quant: "+ $("#new_quant0").val());
                      console.log("display order summary cart success");
                      console.log("cart quant:"+cartDetails.quantity);
								    	//$("#quant0").html(cartDetails.quantity);
								    	total = total + (dealPrice*cartDetails.quantity) + deliveryCharges;
								    	$("#new_quant0").val(curr_quant - cartDetails.quantity);
								    	//alert("New quant: "+ $("#new_quant0").val());
								    	$("#cartid0").val(cartDetails.id)
								    	$("#total_th").html(total);
								    	// if(total < 1000){
								    	// 	$("#calc").html("50");
								    	// 	total += 50;
								    	// 	//alert(total)
								    	// 	$("#total_th").html(total);
								    	// }
									},
									error: function(err)
									{
										swal(JSON.stringify(err));
									}
							});*/
					},
					error: function(err)
					{
						swal(JSON.stringify(err));
					}
			});

	}



	function buynowvalidation()
	{
		$('#loginModal').modal('toggle');
	    checkCookie();
	    show_Welcome();
	}

	function buynowsignup()
	{
		$('#loginModal').modal('toggle');
		show_signup();
	}

	$(window).on('hidden.bs.modal', function() {
	    $('#loginModal').modal('hide');
	    show_Welcome();
	});

	function show_Welcome()
	{

	    var user = getCookie("user_details");
	    if (user != "")
	    {
	    	data = "<div class='panel-heading'>"+
			    	"<h4 class='unicase-checkout-title'>"+
				    	"<a data-toggle='collapse' class='collapsed' data-parent='#accordion' href='#collapseOne'>"+
				    		"<span>1</span>Welcome, "+(JSON.parse(user)).firstName+
				    	"</a>"+
			    	"</h4>"+
		    	"</div>"
	    	$("#login_panel").html(data);
	    	$("#login_panel").removeClass("login-class");
	    	$("#shipAddress").val((JSON.parse(user)).address);
	    	showAddress();
	    }
	}

	function showAddress()
	{
		$("#collapse2").removeClass("collapsed");
		$("#collapse2").attr("aria-expanded",true);
		$("#collapseTwo").addClass("in");
		$("#collapseTwo").attr("aria-expanded",true);
		$("#collapseTwo").attr("style","");
	}

	function hideAddress()
	{
		$("#collapse2").addClass("collapsed");
		$("#collapse2").attr("aria-expanded",false);
		$("#collapseTwo").removeClass("in");
		$("#collapseTwo").attr("aria-expanded",false);
		$("#collapseTwo").attr("style","height:0px");
	}

	function hideOrder()
	{
		$("#collapse3").addClass("collapsed");
		$("#collapseThree").removeClass("in");
		$("#collapse2").attr("aria-expanded",false);
		$("#collapseThree").attr("aria-expanded",false);
		$("#collapseThree").attr("style","height:0px");
	}

	function showOrder()
	{
		$("#collapse3").removeClass("collapsed");
		$("#collapseThree").addClass("in");
		$("#collapse2").attr("aria-expanded",true);
		$("#collapseThree").attr("aria-expanded",true);
		$("#collapseThree").attr("style","");
	}

	function showPayment()
	{
		$("#collapse4").removeClass("collapsed");
		$("#collapseFour").addClass("in");
		$("#collapse4").attr("aria-expanded",true);
		$("#collapseFour").attr("aria-expanded",true);
		$("#collapseFour").attr("style","");
	}

	function hidePayment()
	{
		$("#collapse4").addClass("collapsed");
		$("#collapseFour").removeClass("in");
		$("#collapse4").attr("aria-expanded",false);
		$("#collapseFour").attr("aria-expanded",false);
		$("#collapseFour").attr("style","height:0px");
	}

	function orderSummary()
	{
		hideAddress();
		showOrder();
	}

	function insertOrders()
	{
		if ($(".login-class")[0])
		{
			hideOrder();
		    $('#loginModal').modal('show');
		}
		else
		{
			var shipAddress = $("#shipAddress").val().trim();
			if(shipAddress=="")
			{
				hideOrder();
				$("#addrWarning").show();
				showAddress();
			}
			else
			{
				$("#confirmOrder").prop('disabled', true);
				$("#arrow_order").show();
				$("#orderStatus").show();
				hideOrder();
				showPayment();
			}
		}
	}

	function insertOrder(status, rowid)
	{
		checklogin();
		$.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
        async : false,
				url : ctxPath + "/orders/create",
				data : orderFormToJSON(status, rowid),
				success : function(data) {
					// order created succuess fully?
				},
				error: function(err) {
					swal(JSON.stringify(err));
				}
		});
	}


	function orderFormToJSON(status, rowid)
	{
		var shipAddress = $("#shipAddress").val().trim();
		<%Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		  int orderid = Math.abs((int)timeStamp.getTime());%>
		var orderid = <%=orderid%> + rowid;
	    var user = getCookie("user_details");
		var userid = JSON.parse(user).id;
		var fname = JSON.parse(user).firstName;
		var lname = JSON.parse(user).lastName;
		var TotalAmount = parseInt($("#quant"+rowid).text()) * parseInt($("#deal"+rowid).text());
    console.log("hello" + TotalAmount);
		var today = new Date();
		var Order = JSON.stringify({
	        "itemId": $("#itemid"+rowid).val(),
	        "orderId": orderid,
		    "shippingAddress" : fname + " " + lname + ", " + shipAddress,
		    "user" : {"id" : userid},
		    "quantity": $("#quant"+rowid).text(),
		    "orderStatus" : status,
		    "totalAmount" : TotalAmount,
		    "buyerAccountNo" : $("#accountno").val(),
		    "orderDate" : today.toLocaleString().split(',')[0]
		});
		console.log(Order)
		return Order;
	}



	function ZKartBank()
	{

	}

	// function displayDetails(id) {
	// 	var total = parseInt($("#total_th").text());
	// 	$.ajax(
	// 			{
	// 				type : 'GET',
	// 				contentType : 'application/json',
	// 				url : ctxPath + "/item/" + id,
	// 				success : function(itemDetails) {
	// 					var actualPrice = itemDetails.price - (itemDetails.discount*itemDetails.price/100);
	// 					var table_data =  	"<tr>"+
	// 			    	"	<td>"+itemDetails.listingName+"</td>"+
	// 			    	"	<td>1</td>"+
	// 			    	"	<td>"+itemDetails.price+"</td>"+
	// 			    	"	<td>"+itemDetails.discount+"%</td>"+
	// 			    	"	<td class='classPrice'>"+actualPrice+"</td>"+
	// 			    	"</tr>";
	// 			    	$("#orderSummary_body").prepend(table_data);
	// 				},
	// 				error: function(err)
	// 				{
	// 					swal(JSON.stringify(err));
	// 				}
	// 		});
	// }


	function proceedToPay()
	{
		checklogin();
		if ($(".login-class")[0])
		{
			hidePayment();
		    $('#loginModal').modal('show');
		}
		else
		{
			var shipAddress = $("#shipAddress").val().trim();
			if(shipAddress=="")
			{
				hidePayment();
				$("#addrWarning").show();
				showAddress();
			}
			else
			{
				if($(".orderPlaced")[0])
				{
					var accountno = $("#accountno").val();
					var pin = $("#pin").val();
					if(accountno=="" || pin=="" || isNaN(pin))
					{
						$("#accWarning").show();
					}
					else
					{
						$.ajax(
							{
								type : 'POST',
								url : ctxPath + "/accounts/accountno",
								contentType : 'application/json',
								dataType : "json",
								data : JSON.stringify({
									"accountNumber" : accountno,
									"pin" : pin}),
								success : function(data)
								{
									if(!data)
									{
										$("#accWarning").text("No such account");
										$("#accWarning").show();
									}
									else if(!data.id)
									{
										$("#accWarning").text("Wrong pin");
										$("#accWarning").show();
									}
									else
									{
										var TotalAmount = parseInt($("#total_th").text());
										if(parseInt(data.balance) >= parseInt(TotalAmount)){
												$("#accWarning").hide();
												// deductBalance(data.balance-TotalAmount,data.id);
												// addBalanceFlopkart(TotalAmount);
												successMessage();
										}
										else {
												$("#accWarning").text("Balance Insufficient");
												$("#paymentStatus").text("Tansaction Failed");
												$("#paymentStatus").attr("style","color:red");
												$("#arrow").attr("style","color:red");
												$("#accWarning").show();
												$("#arrow").show();
												$("#paymentStatus").show();
												$("#proceed").prop('disabled', true);

												$('#order_table > tbody > tr').each(function(i, row)
													{
													var rowid = row.id;
													        if(rowid!="") {
													    		var listingid = $("#listingid"+rowid).val();
													    		var new_quant = $("#new_quant"+rowid).val();
												 				insertOrder("Failed", parseInt(rowid));
													        }
													 });
										    	swal({
													  title: "Transaction Failed",
													  text: "Due to insuffient balance",
													  icon: "error"
												});
										}
									}
								},
								error: function(err)
								{
									swal(JSON.stringify(err));
								}
						});
					}
				}
				else
				{
					hidePayment();
					$("#orderWarning").show();
					showOrder();
				}
			}
		}
	}

	// function deductBalance(amt,id)
	// {
	// 	$.ajax(
	// 		{
	// 			type : 'PUT',
	// 			contentType : 'application/json',
	// 			url : ctxPath + "/accounts/update/"+id,
	// 			data : JSON.stringify({
	// 				"balance": amt
	// 			}),
	// 			success : function(data)
	// 			{
	// 				$("#paymentStatus").text("Money Paid");
	// 				$("#proceed").prop('disabled', true);
	// 				$("#paymentStatus").attr("style","color:green");
	// 				$("#arrow").attr("style","color:green");
	// 				$("#arrow").show();
	// 				$("#paymentStatus").show();

	// 				$('#order_table > tbody > tr').each(function(i,row)
	// 					{
	// 					var rowid = row.id;
	// 					        if(rowid!="")
	// 					       	{
	// 					    		var listingid = $("#listingid"+rowid).val();
	// 					    		var new_quant = $("#new_quant"+rowid).val();
	// 					    		var quan = $("#quant"+rowid).text();
	// 					    		var price = parseInt($("#price"+rowid).text());
	// 					    		var tot = parseInt(price)*parseInt(quan);
	// 				 				insertOrder("Money Paid",parseInt(rowid));
	// 				 				deleteFromCart(parseInt(rowid));
	// 								updateQuant(listingid,new_quant);
	// // 								alert(listingid + " " + tot +" " +quan +" "+price);
	// 			 					addwalletmoney(listingid,tot);
	// 					        }
	// 					 });
	// 				swal("Order placed successfully!", {
	// 				      icon: "success",
	// 				});

	// 			},
	// 			error: function(err)
	// 			{
	// 				swal(JSON.stringify(err));
	// 			}
	// 	});
	// }

	function successMessage() {
		$("#paymentStatus").text("Money Paid");
		$("#proceed").prop('disabled', true);
		$("#paymentStatus").attr("style","color:green");
		$("#arrow").attr("style","color:green");
		$("#arrow").show();
		$("#paymentStatus").show();

		$('#order_table > tbody > tr').each(function(i,row) {
			var rowid = row.id;
			        if(rowid!="") {
			    		var listingid = $("#listingid"+rowid).val();
			    		var new_quant = $("#new_quant"+rowid).val();
			    		// var quan = $("#quant"+rowid).text();
			    		// var price = parseInt($("#price"+rowid).text());
			    		// var tot = parseInt(price)*parseInt(quan);
		 				insertOrder("PAYMENT_RECEIVED", parseInt(rowid));
		 				var listingid="<%=request.getParameter("listingid")%>";
		 				if(listingid == "0")
		 					deleteFromCart(parseInt(rowid));
						//updateQuant(listingid, new_quant);
// 								alert(listingid + " " + tot +" " +quan +" "+price);
	 					// addwalletmoney(listingid,tot);
			        }
			 });

		swal("Order placed successfully!", {
		      icon: "success",
		}).then(function() {
          window.location.href = "myOrder.jsp";
        });

	}


	function deleteFromCart(rowid)
	{
		var cartid = $("#cartid" + rowid).val();
		$.ajax(
				{
					type : 'DELETE',
					url : ctxPath + "/cart/delete/"+ cartid,
					success : function(){
					},
					error : function(){
						swal("Could not remove from cart");
					}
			});
	}

	// function addwalletmoney(listingid,amt)
	// {
	// 	amt = amt * 0.15;
	// 	$.ajax(
	// 			{
	// 				type : 'GET',
	// 				contentType : 'application/json',
	// 				url : ctxPath + "/listingDeals/listing/"+listingid,		//chk tht item is in a deal
	// 				success : function(res)
	// 				{
	// 					if (res != [] )
	// 					{	var deal_id = res[0].dealid;
	// 						$.ajax({
	// 									type : 'GET',
	// 									contentType : 'application/json',
	// 									url : ctxPath + "/deals/"+deal_id,		//gets dealid and  go to dealtable
	// 									success : function(data)
	// 									{
	// 										if(data.dealname =="15% Cashback")	//chks wheather its the 15% cashbak deal
	// 										{
	// 										    var user = getCookie("user_details");
	// 										    if (user != "")
	// 										    {
	// 												var user_json = JSON.parse(user);
	// 												var amount = parseInt(amt) + parseInt(user_json.wallet);

	// 												$.ajax(
	// 													{
	// 														type : 'PUT',
	// 														contentType : 'application/json',
	// 														url : ctxPath + "/users/update/"+user_json.id,
	// 														data : JSON.stringify({
	// 															"wallet": amount
	// 														}),
	// 														success : function(data)
	// 														{
	// 															user_json.wallet = amount;
	// 															user = JSON.stringify(user_json);
	// 															setCookie("user_details", user, 30);
	// 															swal("Succesfully added Money to  your wallet")
	// 														},
	// 														error: function(err)
	// 														{
	// 															swal(JSON.stringify(err));
	// 														}
	// 												});
	// 										    }
	// 									    }
	// 									},
	// 									error: function(err)
	// 									{
	// 										swal(JSON.stringify(err));
	// 									}
	// 							});

	// 					}
	// 					else
	// 						swal("no such itemid");
	// 				},
	// 				error: function(err)
	// 				{
	// 					swal(JSON.stringify(err));
	// 				}
	// 		});
	// }

	function checklogin()
	{
		var user = getCookie("user_details");
	    if (user == ""){
	    	swal({
				  title: "Please Login",
				  text: "Login to continue",
				  icon: "error"
				})
				.then((redirect) => {
				  if (redirect) {
					  window.location.href = "index.jsp";
				  }
				  else {
					  window.location.href = "index.jsp";
				  }
			});
	    }
	}

</script>
</html>
