<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Use this page as a template to create new pages-->
<head>
	<%@include file="metaContent.jsp" %>
	<title>My Flopkart Wallet</title>
		<script src="global.js"></script>
	
</head>
<body>
     
    <%@include file="header.jsp" %>
     
  	<div class="body-content outer-top-xs">
  <div class="container">
		
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
                <div class="widget-header">
                		<h4 class="widget-title"><B>MY WALLET</B></h4>
                </div>
	              
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
			        <div class="sidebar-module-container">
			          <div class="sidebar-filter"> <div class="side-menu animate-dropdown outer-bottom-xs">
			          			<div class="head">
			          			<a href="#" style="color:black" onmouseleave="style='color:black'" onmouseenter="style='color:blue'"> 
			          			Balance&nbsp;&nbsp;&nbsp;:<span class="pull-right"><i class='fa fa-rupee-sign'></i>
			          			<span id="wallet"> </span>
			          			</span>
			          			</a></div>
			          	  </div>
			          </div>
			          <!-- /.sidebar-filter --> 
			        </div>
			        <!-- /.sidebar-module-container --> 
			      </div>
					<div class="col-md-3 sidebar"> 
						<input type="button" value="Add Money to Wallet" onclick="addMoney()" class="btn btn-primary">
					</div>
					<div class="col-md-3 sidebar">
						<input type="button" value="Send Money to Account" onclick="sendMoney()" class="btn btn-primary">
					</div>
		        </div>
        
              <!-- /.sidebar-widget-body --> 
      			<div class="row" id="fromAccount" hidden="hidden">
		        	<div class="col-md-12">        
		        		<div class="widget-header"><h4 class="widget-title"><B>FLOPKART ACCOUNT</B></h4></div>
      					<div class="row">
			      			<div class="col-md-4 sidebar">
			      				<label>Account Number</label>
		              			<input type="number" class="form-control input-lg"  name="accountno" id="from_accountno" required>
		          			</div>
			      			<div class="col-md-4 sidebar"> 
			      				<label>Pin</label>
		              			<input type="password" maxlength="4" class="form-control input-lg"  name="pin"  id="from_pin" required>
	          				</div>
			      			<div class="col-md-4 sidebar"> 
			      				<label>Amount</label>
		              			<input type="number" class="form-control input-lg"  name="amount"  id="from_amount" required>
		          			</div>
		         		</div>
      			
	      				<div class="row">
			               	<div style="margin-top:5px;margin-left:15px;color:red" hidden="hidden" id="from_accWarning">Please enter account no. and pin</div>
						</div>
						<br/>
		        	 	<div class="col-md-3 sidebar"> </div>
			      		<div class="col-md-6 sidebar"> 
  							<input type="submit" class="btn btn-primary" value="Proceed to pay" id="from_proceed" onclick="Receive()">
		          		</div>
					</div>
				</div>
				
				
				<div class="row" id="toAccount" hidden="hidden">
		        	<div class="col-md-12">        
		        		<div class="widget-header"><h4 class="widget-title"><B>FLOPKART ACCOUNT</B></h4></div>
      					<div class="row">
			      			<div class="col-md-4 sidebar">
			      				<label>Account Number</label>
		              			<input type="number" class="form-control input-lg"  name="accountno" id="to_accountno" required>
		          			</div>
			      			<div class="col-md-4 sidebar"> 
			      				<label>Pin</label>
		              			<input type="password" maxlength="4" class="form-control input-lg"  name="pin"  id="to_pin" required>
	          				</div>
			      			<div class="col-md-4 sidebar"> 
			      				<label>Amount</label>
		              			<input type="number" class="form-control input-lg"  name="amount"  id="to_amount" required>
		          			</div>
		         		</div>
      			
	      				<div class="row">
			               	<div style="margin-top:5px;margin-left:15px;color:red" hidden="hidden" id="to_accWarning">Please enter account no. and pin</div>
						</div>
						<br/>
		        	 	<div class="col-md-3 sidebar"> </div>
			      		<div class="col-md-6 sidebar"> 
  							<input type="submit" class="btn btn-primary" value="Proceed to pay" id="to_proceed" onclick="Send()">
		          		</div>
					</div>
				</div>
				
			</div>
		</div>   
	</div>
</div>
  	
     
    <%@include file="footer.jsp" %>
     
</body>

<script>
$(document).ready(function()
{
	
	headerFunctions(ctxPath); 
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 30);
		var user_json = JSON.parse(user);
		
		
		$.ajax({
        	type: 'GET',
        	contentType: 'application/json',
        	url: ctxPath + "/users/" + user_json.id+"/",
        	dataType : "json",
    		async: false,
        	success: function(resp){
        		$('#wallet').html(resp.wallet);		
        		console.log("anirudh ="+resp.wallet);
        	},
        	error: function(resp){
        		console.log(resp.status);
        	}
        })
		
		
		
		
		
		
		
		
    } 
})





function addMoney()
{
	$("#fromAccount").show();
	$("#toAccount").hide();
}

function sendMoney(){
	$("#fromAccount").hide();
	$("#toAccount").show();
}

function AccToWalDB(result, amt){
	console.log("================="+result);
	console.log("---------------receive");
	result.balance -= amt;
	console.log("================="+result);
	
	var id = result.id;
	console.log("================="+id);
	
	var myresult=JSON.stringify(result);
	console.log("================="+myresult);
	
	$.ajax({
		type: 'PUT',
		contentType : 'application/json',
		url: ctxPath + "/accounts/update/" + id+"/",
		async: false,
		data: myresult,
		success: function(resp){
			console.log("prit it"+resp);
		},
		error: function(resp){
			
			console.log("error" + resp.status);
		}
	});
	

    var user = JSON.parse(getCookie("user_details"));
 var wallett;
    $.ajax({
    	type: 'GET',
    	contentType: 'application/json',
    	url: ctxPath + "/users/" + user.id+"/",
    	dataType : "json",
		async: false,
    	success: function(resp){
    		
    		wallett=resp.wallet;
    		console.log("anirudh ="+resp.wallet);
    	},
    	error: function(resp){
    		console.log(resp.status);
    	}
    })


    
    
    var id = user.id;
    console.log("hello wallet"+user.wallet);
    wallett += amt;
    console.log("sending user : " + user.wallet);
    
    
    var mydata = JSON.stringify({
    	    "id":JSON.parse(getCookie("user_details")).id ,
    	    "firstName": JSON.parse(getCookie("user_details")).firstName,
    	    "lastName": JSON.parse(getCookie("user_details")).lastName,
    	    "userType": JSON.parse(getCookie("user_details")).userType,
    	    "email": JSON.parse(getCookie("user_details")).email,
    	    "phone": JSON.parse(getCookie("user_details")).phone,
    	    "imageUrl": JSON.parse(getCookie("user_details")).imageUrl,
    	    "password": JSON.parse(getCookie("user_details")).password,
    	    "address": JSON.parse(getCookie("user_details")).address,
    	    "wallet": wallett,
    	    "secret":JSON.parse(getCookie("user_details")).secret ,
    	    "dob":JSON.parse(getCookie("user_details")).dob 
    });
    
    
    
    $.ajax({
    	type: 'PUT',
    	contentType: 'application/json',
    	url: ctxPath + "/users/update/" + id+"/",
    	async: false,
    	data:mydata,
    	success: function(resp){
    		console.log(resp);
    	},
    	error: function(resp){
    		console.log(resp.status);
    	}
    })
}

function Receive()
{
	var accountno = $("#from_accountno").val();
	var pin = $("#from_pin").val();
	var amt = parseInt($("#from_amount").val(), 10);
	
	console.log(accountno);
	console.log(pin);
	
	if(accountno=="" || pin=="" || isNaN(pin))
	{
		$("#from_accWarning").show();
	}
	else
	{
		$.ajax({		  
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/accounts/accountno/" + accountno,
			async: false,
		    success : function(result){
				console.log("hello");
				console.log(result);
				if(result.balance>=amt){
					AccToWalDB(result, amt);
				}
			},
			error:function() {
				//swal("error occurred");
			}
		});
	}
}

function ToAcc(result, amt){
	result.balance += amt;
	console.log(result);
	
	var id = result.id;
	
	$.ajax({
		type: 'PUT',
		contextType: 'application/json',
		url: ctxPath + "/accounts/update/" + id,
		async: false,
		data: result,
		success: function(resp){
			console.log(resp);
		},
		error: function(resp){
			console.log(resp.status);
		}
	});
}

function WalToAccDB(accountno, amt){
	console.log("===========send");
	var user = JSON.parse(getCookie("user_details"));
    
    user.wallet -= amt;
    console.log(user);
    
    var id = user.id;
    $.ajax({
    	type: 'PUT',
    	contextType: 'application/json',
    	url: ctxPath + "/user/update/" + id,
    	async: false,
    	data: user,
    	success: function(resp){
    		console.log(resp);
    	},
    	error: function(resp){
    		console.log(resp.status);
    	}
    })
    
    
    $.ajax({		  
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/accounts/accountno/" + accountno,
		async: false,
	    success : function(result){
			console.log("hello");
			console.log(result);
			if(result.balance>=amt){
				ToAcc(result, amt);
			}
		},
		error:function() {
			//swal("error occurred");
		}
	});
    
}
function Send(){
	var accountno = $("#to_accountno").val();
	var pin = $("#to_pin").val();
	var amt = parseInt($("#to_amount").val(), 10);
	
	console.log(accountno);
	console.log(pin);
	
	if(accountno=="" || pin=="" || isNaN(pin))
	{
		$("#from_accWarning").show();
	}
	else
	{
		var user = JSON.parse(getCookie("user_details"));
		if(user.wallet>=amt){
			WalToAccDB(accountno, amt);
		}
	}
}
function deductBalance(amt,id)
{
	$.ajax(
		{
			type : 'PUT',
			contentType : 'application/json',
			url : ctxPath + "/accounts/update/"+id,
			data : JSON.stringify({
				"balance": amt
			}),
			success : function(data)
			{
				swal("Amount deducted from bank account");
			},
			error: function(err) 
			{
				swal(JSON.stringify(err));
			}
	});
}

function addBalanceFlopkart(amt)
{

    var user = getCookie("user_details");
    if (user != "") 
    {
		
		var user_json = JSON.parse(user);
		var amount = parseInt(amt) + parseInt(user_json.wallet);
		$.ajax(
			{
				type : 'PUT',
				contentType : 'application/json',
				url : ctxPath + "/users/update/"+user_json.id,
				data : JSON.stringify({
					"wallet": amount
				}),
				success : function(data)
				{
					user_json.wallet = amount;
					user = JSON.stringify(user_json);
					$('#wallet').html(user_json.wallet);
					setCookie("user_details", user, 30);
				},
				error: function(err) 
				{
					swal(JSON.stringify(err));
				}
		});
    }
}


</script>
</html>