<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add new deal category</title>
</head>	
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/SellerRegStyle.css">
<script src="global.js"></script>
</head>
<body style="background: url(&quot;./images/sellerHub/Signup-screen-BG.jpg&quot;) no-repeat;
  background-size: 100%;">
	<header>
		<nav class="nav navbar-default" style="background-color:#027cd5">
			<a href="index.jsp"><img class="logo" src="./images/zkartLogo.jpg"></a>
		<div style="float:right; padding-top:30px; padding-right: 5px">
			<a style="text-decoration:underline; color:white;font-size: 20px; font-weight:500;" href="admin.jsp">Click here to go back to dashboard</a><br/>
		</div>
				</nav>
		
		
	</header>
		
 	<table><tr ><td width="60%" >
 	<div class="row" style="margin-top:20px">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="panel-group " id="accordion">
				<!-- categories  -->
				<div  id="categories_panel" class="panel panel-default checkout-step-01" >
				    
				    <!-- panel-heading -->
					<div class="panel-heading">
			    	<h4 class="unicase-checkout-title">
				        <a data-toggle="collapse" class="" data-parent="#accordion"
				        href="#collapseCategories">Create new Deal</a>
				     </h4>
			    	</div>	    
			    	<!-- panel-heading -->

					<!-- panel-body  -->
					<div class="panel-collapse collapse in">
					    <div class="panel-body">
					       <div class="container">
							<form>
								<input class="form-control" type="text" id="description"
									placeholder="Enter deal name" required>
								<br/>
								<!--  <textarea id="description" rows="7" cols="92" placeholder="Enter discount to be given" required></textarea>-->
							
								<input class="form-control" type="date" id="startdate"
									placeholder="Enter discount to be given" required> <br/>
								
								<input class="form-control" type="date" id="enddate"
									placeholder="Enter discount to be given" required> <br/>
								<input class="form-control" type="number" id="discount"
									placeholder="Enter discount to be given" required> 
								<br/>
								<input type="submit" class="btn btn-primary"
									onclick="insertDealCategory();" />
							</form>
						</div>		
						</div>
					</div>
					<!-- panel-body  --><!-- row -->
				</div>
				<!-- End checkout-step-01  -->
			</div><!-- /.checkout-steps -->
		</div>
	</div>
	</td>
	<td width="70%">
	<div class="row" style="margin-top:20px">
			<div class="col-md-1"></div>
				<div class="col-md-12">
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
						<div  id="user_panel" class="panel panel-default checkout-step-01" >
				    
				    <!-- panel-heading -->
					<div class="panel-heading">
			    	<h4 class="unicase-checkout-title">
				        <a data-toggle="collapse" class="" data-parent="#accordion"
				        href="#collapseUser">Deals</a>
				     </h4>
			    	</div>	    
			    	<!-- panel-heading -->

					<!-- panel-body  -->
					<div id="collapseUser" class="panel-collapse collapse in">
					    <div class="panel-body">
							<div class="table-responsive">          
							  <table id="user_table" class="table">
							  <thead>
						    	<tr>
						    		<th>Deal Name</th>
						    		<th>Discount Offered</th>
						    		<th>Start Date</th>
						    		<th>End Date</th>
								</tr>
						    	</thead>
						    	<tbody id="dealTable_body">
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
	</td></tr></table>
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
	fetch();
});

function fetch() 
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/deals",
		dataType : "json", // data type of response
		success : function(deals_json){
			var data="";
            for(var i in deals_json){
               data+="<tr><td>"+deals_json[i].description+"</td>"+
				"<td>"+deals_json[i].discount+"</td>"+"<td>"+deals_json[i].startDate+"</td>"+
				"<td>"+deals_json[i].endDate+"</td></tr>";
            }
            $("#dealTable_body").html(data);
    	},
    	error:function() {
        	swal("error occurred");
    	}
	});
}

function formToJSON() 
{
	//var dealName = $("#dealName").val();
	var discount = $("#discount").val();
	var desc = $("#description").val();
	var startDate = $("#startdate").val();
	var endDate = $("#enddate").val();
	var zkartDeal = JSON.stringify({
	    "description" : desc,
	    "startDate":startDate,
	    "endDate":endDate,
	    "discount" : discount
	});
	//alert(zkartDeal);
	console.log(zkartDeal);
	return zkartDeal;
}

function render(){
	swal({
		  title: "Success",
		  text: "Successful entry into the database!",
		  icon: "success"
		})
		.then((redirect) => {
		  if (redirect) {
			  window.location.reload(true);
		  }
		  else {
			  window.location.reload(true);
		  }
	});
}

function insertDealCategory()
{
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/deals/create",
			data : formToJSON(),
			success : render(),
			error: function() {
				swal(JSON.stringify(err));
			}
	});
}
</script>
</html>