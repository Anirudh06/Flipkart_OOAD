<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Question1</title>
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/SellerRegStyle.css">
<script src="global.js"></script>
</head>
<body >
  	<!-- fields to store variables for counting and other information -->
	<input type="text" id="count" name="count" hidden="hidden"/>
	<input type="text" id="itemid" name="itemid" hidden="hidden"/>
	<input type="text" id="img1" name="img1" hidden="hidden"/>

	<header>
		<!-- write header here 
 -->	</header>
	<div class="row" style="margin-top:20px">
				<div class="col-md-1"></div>
				<div class="col-md-5">
				<!-- 	write some thing here 
 -->
				</div>
				<div class="col-md-5">
					<!-- something here for table
 -->

				</div>
	</div>
	<a href="index.jsp"><button class="btn-lg btn btn-uppercase btn-primary shop-now-button">Home</button></a>
 <hr/>
  <div align="center">
  <table><tr><td>
 Enter the Buyer's Name: </td><td><input type="text" style = 'font-size:20px; text-align:center;border-style:ridge;' value="0" name="MinPrice" id="Userid" >
    </td><td><button type="button"  class="btn btn-primary" id="applyFilter" style="margin:auto;display:block;margin-top:0px" onclick="getuserwishlist()"><b>Apply Filter</b></button>
     
 </td></tr></table></div>
	<div class="row" style="margin-top:20px">
			<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
						<div  id="user_panel" class="panel panel-default checkout-step-01" >

						    <!-- panel-heading -->
							<div class="panel-heading">
							<h4>Report of details of list of items in wishlist</h4>
					    	<h4 class="unicase-checkout-title" align="Center">
						         Anirudh Pratap Singh MT2018012
						     </button></h4>
					    	</div>
					    	<!-- panel-heading -->

							<!-- panel-body  -->
							<div id="collapseUser" class="panel-collapse collapse in">
							    <div class="panel-body">
									<div class="table-responsive">
									  <table id="user_table" class="table">
									  <thead>
								    	<tr>
								    		<th>S_NO.</th>
								    		<th> I_ID</th>
								    		<th>I_Name</th>
								    		<th>price</th>
								    		<th>Qty</th>
								    		<th>Seller_Id</th>
								    		<th>Seller_Name</th>
										</tr>
								    	</thead>
								    	<tbody id="userTable_body">
								    	</tbody>
								    </table>
							       </div>
								</div>
							</div>
							<!-- panel-body  --><!-- row -->


						</div>
						<!-- End checkout-step-01  -->

					</div><!-- /.checkout-steps -->



				</div>
				</div>
<!-- 			<div class="row" style="margin-top:20px">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="panel-group checkout-steps" id="accordion">
						checkout-step-02 
						<div  id="seller_panel" class="panel panel-default checkout-step-01" >

						    panel-heading
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="" data-parent="#accordion"
						        href="#collapseSeller">Sellers</a>
						     </h4>
					    	</div>
					    	panel-heading

							panel-body 
							<div id="collapseSeller" class="panel-collapse collapse in">
							    <div class="panel-body">
									<div class="table-responsive">
									  <table id="user_table" class="table">
									  <thead>
								    	<tr>
								    		<th>Seller Name</th>
								    		<th>Seller Id Surrogate</th>
								    		<th>SellerId (Email)</th>
								    		<th>Password</th>
										</tr>
								    	</thead>
								    	<tbody id="sellerTable_body">
								    	</tbody>
								    </table>
							       </div>
								</div>
							</div>
							panel-body  --><!-- row


						</div>
						End checkout-step-01 

					</div>/.checkout-steps



				</div>

			</div> -->

	<!-- ravindra  item list-->

		<!-- <div class="row" style="margin-top:20px">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="panel-group checkout-steps" id="accordion">
						checkout-step-02 
						<div  id="seller_panel" class="panel panel-default checkout-step-01" >

						    panel-heading
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="" data-parent="#accordion"
						        href="#collapseSeller">Purchased Items</a>
						     </h4>
					    	</div>
					    	panel-heading

							panel-body 
							<div id="collapseSeller" class="panel-collapse collapse in">
							    <div class="panel-body">
									<div class="table-responsive">
									  <table id="purchase_table" class="table">
									  <thead>
								    	<tr>
								    		<th>Order Id</th>
								    		<th>Item Id</th>
								    		<th>Order Date</th>
								    		<th>Status</th>
										</tr>
								    	</thead>
								    	<tbody id="purchaseTable_body">
								    	</tbody>
								    </table>
							       </div>
								</div>
							</div>
							panel-body  --><!-- row


						</div>
						End checkout-step-01 

					</div>/.checkout-steps



				</div>

			</div>
 -->			
<!-- add colour dynamically -->

		<!-- <div class="row" style="margin-top:20px">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="panel-group checkout-steps" id="accordion">
						checkout-step-02 
						<div  id="seller_panel" class="panel panel-default checkout-step-01" >

						    panel-heading
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="" data-parent="#accordion"
						        href="#collapseSeller">Add Color Choices</a>
						     </h4>
					    	</div>
					    	panel-heading

							panel-body 
							<div id="collapseSeller" class="panel-collapse collapse in">
							    <div class="panel-body">
									<div>
										Enter new color option :
										<input class='form-control' type='text' id='color' placeholder='Enter color ' /><br/>
										<input type='submit' class='btn btn-primary' onclick='insertColor();' /><br/>
										<button id="getColor" onclick="getColors()">Get All Colors</button><br/>
										<span id="allColors"></span>
									</div>
								</div>
							</div>
							panel-body  --><!-- row


						</div>
						End checkout-step-01 

					</div>/.checkout-steps



				</div>

			</div>
 -->			
			<!-- ALL FILTERS DISPLAY -->
		<!-- <div class="row" style="margin-top:20px">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="panel-group checkout-steps" id="accordion">
						checkout-step-02 
						<div  id="seller_panel" class="panel panel-default checkout-step-01" >

						    panel-heading
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="" data-parent="#accordion"
						        href="#collapseSeller">All Filters</a>
						     </h4>
					    	</div>
					    	panel-heading
					    	
							panel-body 
							<div id="collapseUser" class="panel-collapse collapse in">
							    <div class="panel-body">
									<div class="table-responsive">
									  <table id="user_table" class="table">
									  <thead>
								    	<tr>
								    		<th>Filter Name</th>
								    		<th>Category Name</th>
								    		<th>SubCategory Name</th>
								    		<th>Insert Span</th>
								    		<th>Insert Value Button</th>
								    		<th>Values for Filter</th>
										</tr>
								    	</thead>
								    	<tbody id="userTable_body1">
								    	</tbody>
								    </table>
							       </div>
								</div>
							</div>
							</div>
							</div>
							</div>
							</div>
							
					 -->		

					    				
</body>

<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script>
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
<script src="./bootstrapFiles/js/sweetalert.min.js"></script>
<script>
$(document).ready(function(){

<%--     <% FlopkartCategoryClient client = new FlopkartCategoryClient(); %> --%>
<%-- 	String test1 = test.getImageURL();%> --%>
<%-- 	var test = "<%=test1%>"; --%>
// 	alert(test);
	$('#count').val(0);
	//fetch();
	//fetchUsers() ;
	//fetchItems();
  //seeAdminBalance();
  //getAllFilters();
});

function getAllFilters()
{
	$.ajax(
    		{
    			type : 'GET',
    			contentType : 'application/json',
    			async : false,
    			url : ctxPath + "/filter",
    			dataType : "json", // data type of response
    			success : function(list)
    			{
    				var str="";
    				for (i in list)
    				{
        				console.log(list);
        				str += "<tr><td hidden='hidden'>"+list[i].id + 
        						"</td><td  >"+list[i].filterName+"</td><td>"+
        						list[i].subCategory.category.categoryName+"</td><td>"+
        						list[i].subCategory.subcategoryName+"</td>"+
        						"<td><input type='text' id='filterValueInput"+list[i].id+"'/></td>"+
        						"<td><button  style = 'font-size:15px;' onclick='insertValueToFilter("+list[i].id+")'>Insert Value To Filter</button></td>"+
        						"<td><span id='filterValueOutput"+list[i].id+"'/></span/></td>"+
        						"</tr>";
        						
        			    
        			}
        			$("#userTable_body1").append(str);
    				//document.getElementById("allFilters").innerHTML=str;

					for (i in list)
					{
						getValueOfFilter(list[i].id)
					}
        	    },
    	    	error:function()
    	    	{
    	        	swal("error occurred");
    	    	}
    		});	
}

function getValueOfFilter(j)
{
	//console.log("getValueOfFilter" + j);
	$.ajax(
    		{
    			type : 'GET',
    			contentType : 'application/json',
    			url : ctxPath + "/filterValues/" + j,
    			async : false,
    			dataType : "json", // data type of response
    			success : function(list)
    			{
        			console.log(list);
    				var str="<ul>";
    				for (i in list)
    				{
        				str=str+"<li>"+list[i].value+"</li>";
        			}
        			str+="</ul>";
        			var x="filterValueOutput"+j+"";
        			//console.log(x);
    				document.getElementById(x).innerHTML=str;
    	    	},
    	    	error:function()
    	    	{
    	        	swal("error occurred");
    	    	}
    		});	
}


function insertValueToFilter(i)
{
	console.log($("#filterValueInput"+i+"").val());
	if($("#filterValueInput"+i+"").val()=="")
	{
		alert("field cannot be empty");
		return ;
	}

	$.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/filterValues/create/"+i+"/"+$("#filterValueInput"+i+"").val(),
				success : function(){
					swal("inserted successfully");
					window.location.reload(true);
					
					},
				error: function() {
					swal("error occured");
				}
		});
}

function insertColor()
{
	if($("#color").val()=="")
		{
			alert("field cannot be empty");
			return ;
		}
	
	var body=JSON.stringify({
		"color": $("#color").val()
		});
	$.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/color/addColor",
				data : body,
				success : function(){
					swal("inserted successfully");
					window.location.reload(true);
					
					},
				error: function() {
					swal("error occured");
				}
		});
}

function getColors()
{
	$.ajax(
    		{
    			type : 'GET',
    			contentType : 'application/json',
    			url : ctxPath + "/color/",
    			dataType : "json", // data type of response
    			success : function(list)
    			{
    				var str="<ul>";
    				for (i in list)
    				{
        				str=str+"<li>"+list[i].color+"</li>";
        			}
        			str+="</ul>";
    				document.getElementById("allColors").innerHTML=str;
    	    	},
    	    	error:function()
    	    	{
    	        	swal("error occurred");
    	    	}
    		});	
}

function updateStatus(element, result, j, newStatus) {
	result = JSON.stringify(result);
	console.log("newStatus: " + newStatus);
	result = JSON.parse(result);
	result.status = newStatus;
	console.log(result);
	result = JSON.stringify(result);
	$.ajax({
		type: 'PUT',
		contentType : 'application/json',
		url : ctxPath + "/orders/update/"+result.orderId,
		data : result,
		statusCode : {
			200 : function() {
				swal("Status Updated to " + newStatus);
//				if (newStatus == "ORDER_RECIEVED") document.getElementById("rating_"+ j ).style.visibility = "visible";
				//$("#status" + j).text("<b>" + newStatus + "</b>");
				swal({
					  title: "Status Updated.",
					  //text: "Submit to run ajax request",
					  type: "info",
					  showCancelButton: false,
					  closeOnConfirm: false,
					  showLoaderOnConfirm: true
					}, function () {

					});

			},
			204 : function() {
				// ok with no response
				swal("Status Updated to " + newStatus);
			}
		}
	});
	window.location = "admin.jsp";
}


function displayListings(order_json)
{
	orderObj=JSON.stringify(order_json);
	console.log("display listings:"+JSON.stringify(order_json));
    <% AccessProperties ap = new AccessProperties(); %>
	console.log("status ="+ order_json.Status);
	var data="";
	var j = $("#count").val();
	j++;
	$('#count').val(j);



	data+= "<tr><td>"+order_json.orderId+"</td>"+
	"<td>"+order_json.itemId+"</td>"+
	"<td>"+order_json.orderDate+"</td>"+
	"<td>"+order_json.orderStatus+"</td>";

	// var orderTerminated = "\"ORDER_TERMINATED\"";
	// var orderCompletedWithReturn = "\"ORDER_COMPLETED_AND_RETURNED\"";
	// var orderCompleted = "\"ORDER_COMPLETED\"";

	// var res = JSON.stringify(order_json);

	// if(order_json.orderStatus == "ORDER_RETURNED")
	// {//cancel transaction button
	// 	data+="<td>"+
	// 		  "<button id='return" + j + "'  name='cancel' onclick='updateStatus(this, " + res + ", " + j + ", " + orderCompletedWithReturn + ");'>Cancel Order and Send Money To Buyer</button>"+
	// 	      "</td>";
	// }
	// else if(order_json.orderStatus == "ORDER_CANCELLED")
	// {//send money to seller button
	// 	data+="<td>"+
	// 	  "<button id='cancel" + j + "'  name='cancel' onclick='updateStatus(this, " + res + ", " + j + ", " + orderTerminated + ");'>Complete Order and Send Money To Buyer</button>"+
	//       "</td>";
	// }
	// else if(order_json.status == "ORDER_RECIEVED")
	// {//send money to seller button
 //    console.log(order_json);
 //    var retDate=new Date(order_json.returnDate);
 //    console.log(retDate);
 //    var curDate=new Date();
 //    console.log(curDate);
 //    console.log(curDate-retDate);
 //    if(curDate-retDate>0){
 //      data+="<td>"+
 //  		  "<button id='complete" + j + "'  name='cancel' onclick='updateStatus(this, " + res + ", " + j + ", " + orderCompleted + ");'>Complete Order and Send Money To Seller</button>"+
 //  	      "</td>";
 //    }

	// }
	//else
	//	{
		data+="<td></td>"
	//	}
	data+="</tr>";



	$("#purchaseTable_body").append(data);



}

//ravindra purchase item
function fetchItems()
{

    $.ajax(
    		{
    			type : 'GET',
    			contentType : 'application/json',
    			url : ctxPath + "/orders/",
    			dataType : "json", // data type of response
    			success : function(orders_json)
    			{
    				//console.log(orders_json);
    	            for(var i in orders_json)
    	            {
    	            	displayListings(orders_json[i]);
    	            }
    	    	},
    	    	error:function()
    	    	{
    	        	swal("error occurred: Purchase table");
    	    	}
    		});

}


function getuserwishlist(){
	var useid = $("#Userid").val();
	fetchUsers(useid);
}


function fetchUsers(useid)
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url :  ctxPath + "/wishlist/user/"+useid,
		dataType : "json", // data type of response
		success : function(users_json)
		{//console.log(users_json);
	console.log(users_json);
            for(var i in users_json)
            {
            	var data =  "<tr><td>"+i+"</td>"+
            	"<td>"+users_json[i].item.id+"</td>"+
            	"<td>"+users_json[i].item.listingName+"</td>"+
            	"<td>"+users_json[i].item.price+"</td>"+
            	"<td>"+users_json[i].item.quantity+"</td>"+
            	"<td>"+users_json[i].item.user.id+"</td>"+
            	"<td>"+users_json[i].item.user.firstName+"</td>"+
			            				"</tr>";
            	$("#userTable_body").append(data);
            }	
			      
            
          
            
    	},
    	error:function()
    	{
        	swal("error occurred");
    	}
	});
}
function fetch()
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/categories",

		dataType : "json", // data type of response
		success : function(result){
			var data="<select  class='form-control' id='catId'>"+"<option value=' "+ 0 +" '>Select a category</option>";
            for(var i in result){
               data+="<option value='"+result[i].id+"'>"+result[i].categoryName+"</option>";
           		var data1 =  "<li class='list-group-item'>"+result[i].categoryName+"</li>";
        		$("#categoryList").append(data1);
            }
            data += "</select>";
            $('#content').html(data);
    	},
    	error:function() {
        	//alert("error occurred");
    	}
	});
}

function formToJSON()
{
	if($("#catId").val()==0)
	{
		alert("field cannot be empty");
		return;
		
	}
    var categoryId = $("#catId").val();
	var subcategoryName = $("#subcatName").val();
	var temp={"id":categoryId};
	console.log(temp);
	var zkartSubCat = JSON.stringify({
	    "category" : temp,
	    "subcategoryName" : subcategoryName
	});
	console.log(zkartSubCat);


	//alert(zkartSubCat);
	return zkartSubCat;
}

function formToJSON1()
{
	var categoryName = $("#catName").val();
	var zkartCat = JSON.stringify({
	    "categoryName" : categoryName
	});
	//alert(zkartCat);
	return zkartCat;
}

// function formToJSON2()
// {
// 	var categoryId = $("#catId").val();
// 	var subcategoryName = "";
// 	var zkartSubCat = JSON.stringify({
// 	    "categoryId" : categoryId,
// 	    "subcategoryName" : subcategoryName
// 	});
// 	return zkartSubCat;
// }

function insertSubcategory()
{
	if(document.getElementById("subcatName").value=="")
		{
			alert("field cannot be empty");
			return;
		}
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/subcategories/create",
			data : formToJSON(),
			success : render(),
			error: function() {
				swal(JSON.stringify(err));
			}
	});
}

function render(){
	swal("Succesful entry into the database");
	window.location.reload(true);
}

var adminId=1;

function seeAdminBalance()
{
  $("rupees").show();
	$.ajax(
			{
				type : 'GET',
				url : ctxPath + "/accounts/user/"+adminId,
				dataType : "json", // data type of response
				success : function(result){
					//console.log(result);
					document.getElementById("adminBalance").innerText = result['balance'];
/*					var data="";
		            for(var i in result){
		            	data+="<li class='list-group-item'>"+result[i].subcategoryName+"</li>";
		            }
		            $('#SubCat').html(data);*/
		    	},
		    	error:function(data,status) {
		    		swal("Data: " + data + "\nStatus: " + status);
		        	//alert("error occurred");
		    	}
			});
}

function insertCategory()
{
	if(document.getElementById("catName").value=="")
	{
		alert("field cannot be empty");
		return;
	}
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/categories/create",
			data : formToJSON1(),
			success : render(),
			error: function() {
				swal(JSON.stringify(err));
			}
	});
}

function deleteCategory()
{
	var str="<br/><input class='form-control' type='text' id='deleteCatName' placeholder='Enter category name' /><br/><input type='submit' class='btn btn-primary' onclick='deleteCategoryFinal();' />";
	
	document.getElementById("CategorySpan").innerHTML=str;
}

function deleteCategoryFinal()
{
//	console.log("hello " + $("#deleteCatName").val());
	if(document.getElementById("deleteCatName").value=="")
	{
		alert("field cannot be empty");
		return;
	}
	$.ajax(
		{
			type : 'DELETE',
			contentType : 'application/json',
			url : ctxPath + "/categories/deleteByName/" + $("#deleteCatName").val() ,
			success : function() {
					swal("Category deleted successfully");
					window.location.reload(true);
					
				},
			error: function(err) {
				swal("Category Not Found");
			}
	});
}

function updateCategory()
{
	var str="<br/><input class='form-control' type='text' id='updateCatName1' placeholder='Enter existing category name' /><br/><input class='form-control' type='text' id='updateCatName2' placeholder='Enter new category name' /><br/><input type='submit' class='btn btn-primary' onclick='updateCategoryFinal();' />";
	
	document.getElementById("CategorySpan").innerHTML=str;
}

function updateCategoryFinal()
{
//	console.log("hello " + $("#updateCatName").val());
	if(document.getElementById("updateCatName1").value=="" || document.getElementById("updateCatName2").value=="")
	{
		alert("field cannot be empty");
		return;
	}
	$.ajax(
		{
			type : 'PUT',
			contentType : 'application/json',
			url : ctxPath + "/categories/updateByName/" + $("#updateCatName1").val() + "/" + $("#updateCatName2").val(),
			success : function() {
				swal("Category updated successfully");
				window.location.reload(true);
				
			},
			error: function(err) {
				swal("Category Not Found");
			}
	});
}

function deleteSubCategory()
{
	var str="<br/><input class='form-control' type='text' id='deleteSubCatName' placeholder='Enter subcategory name' /><br/><input type='submit' class='btn btn-primary' onclick='deleteSubCategoryFinal();' />";
	
	document.getElementById("subCategorySpan").innerHTML=str;
}

function deleteSubCategoryFinal()
{
//	console.log("hello " + $("#deleteCatName").val());
	if(document.getElementById("deleteSubCatName").value=="" || $("#catId").val()==0 )
	{
		alert("field cannot be empty");
		return;
	}
	$.ajax(
		{
			type : 'DELETE',
			contentType : 'application/json',
			url : ctxPath + "/subcategories/deleteByName/" + $("#catId").val() + "/" + $("#deleteSubCatName").val() ,
			success : function() {
					swal("SubCategory deleted successfully");
					window.location.reload(true);
					
				},
			error: function(err) {
				swal("SubCategory Not Found");
			}
	});
}

function addFilter()
{
	var str="<br/><input class='form-control' type='text' id='filter' placeholder='Enter filter name' />"+
			"<br/><input type='submit' class='btn btn-primary' onclick='addFilterFinal();' />";
	
	document.getElementById("subCategorySpan").innerHTML=str;
}

function addFilterFinal()
{
	if(document.getElementById("filter").value=="" || $("#catId").val()==0 || $("subcatName").val()=="" )
	{
		alert("field cannot be empty");
		return;
	}
	
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/filter/create/" + $("#catId").val() + "/" +  $("#subcatName").val() + "/" + $("#filter").val() ,
			success : function() {
					
					swal("Filter added successfully");
					window.location.reload(true);
					
				},
			error: function(err) {
				swal("Error");
			}
	});
}

function updateSubCategory()
{
	var str="<br/><input class='form-control' type='text' id='updateSubCatName1' placeholder='Enter existing subcategory name' /><br/><input class='form-control' type='text' id='updateSubCatName2' placeholder='Enter new subcategory name' /><br/><input type='submit' class='btn btn-primary' onclick='updateSubCategoryFinal();' />";
	document.getElementById("subCategorySpan").innerHTML=str;
}

function updateSubCategoryFinal()
{
//	console.log("hello " + $("#updateCatName").val());
	if(document.getElementById("updateSubCatName1").value=="" || document.getElementById("updateSubCatName2").value=="" || $("#catId").val()==0)
	{
		alert("field cannot be empty");
		return;
	}
	$.ajax(
		{
			type : 'PUT',
			contentType : 'application/json',
			url : ctxPath + "/subcategories/updateByName/" + $("#catId").val() + "/" + $("#updateSubCatName1").val() + "/" + $("#updateSubCatName2").val(),
			success : function() {
				swal("SubCategory updated successfully");
				window.location.reload(true);
				
			},
			error: function(err) {
				swal("SubCategory Not Found");
			}
	});
}

function DispSubCat()
{
	if($("#catId").val()==0)
		{
		    swal("Select A Category");
		}
	else
	{
		var categoryId = $("#catId").val();
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/subcategories/category/"+categoryId,
		dataType : "json", // data type of response
		success : function(result){
			var data="";
            for(var i in result){
            	data+="<li class='list-group-item'>"+result[i].subcategoryName+"</li>";
            }
            $('#SubCat').html(data);
    	},
    	error:function(data,status) {
    		swal("Data: " + data + "\nStatus: " + status);
        	//alert("error occurred");
    	}
	});
	}
}
</script>
</html>
