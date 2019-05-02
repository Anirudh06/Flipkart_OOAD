<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="zkart.jsp.AccessProperties" %>
<%@ page import="zkart.jsp.CreateProperties" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="metaContent.jsp" %>
	<title>My Profile</title>
	<style>
	
	.custom-file-upload
	{
		border: 1px solid #ccc;
		display: inline-block;
		padding: 6px 12px;
		cursor: pointer;
	}
	.dp .tooltiptext
	{
		visibility: hidden;
		background-color: black;
		color: #fff;
		text-align: center;
		border-radius: 6px;
		/* Position the tooltip */
		position: absolute;
		z-index: 1;
		overflow:visible;
	}
	.dp:hover .tooltiptext
	{
	    visibility: visible;
	}
	</style>
		<script src="global.js"></script>
	
	</head>

<body>
<!-- ============================================== HEADER ============================================== -->

<%@include file="header.jsp" %>

<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar">
        <div class="sidebar-module-container">
          <div class="sidebar-filter">
            <!-- ============================================== IMAGE============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">

              <h5 class="section-title">Hello, <span id="usernameView"></span></h5>
              <div class="widget-header">
                <h4 class="widget-title" id="userID"></h4>
              </div>
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li>
						<div id="dp" class="dp"><img id="dp1" height="100px"  src="#" >
						<span id="tooltiptext" class="tooltiptext"></span></div>

					<div id="no_dp">
					<%if (request.getParameter("imgName") != null) { %>
						<p style="color:red;"><b>Login again to view uploaded dp</b></p>
					 <% } else { %>
						<form id="update_img" method="post" action="UploadServlet" enctype="multipart/form-data">
						<label for="dpImg" class="custom-file-upload">
						    <img height="50px" width="50px" src="./images/profile-pic-male_icon.svg">   Choose File
						</label>
							<input type="file"  style="display:none"
								id="dpImg" name="dpImg" accept=".jpg, .jpeg, .png, .JPG, .PNG, .JPEG" required/>
							<input type="submit" class="btn btn-warning btn-block" value="Set profile picture"/>
							<input type="text" id="ID" name="ID" hidden="hidden"/>
						</form>
					<% } %>
					</div>
				 </li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
            <!-- ============================================== IMAGE: END ============================================== -->


            <!-- ============================================== Other TAGS ============================================== -->
          <!----------- Account------------->
          <br/>
              <div class="side-menu animate-dropdown outer-bottom-xs">
          			<div class="head"><i class="fas fa-list"></i><a href="myOrder.jsp" style="color:black" onmouseleave="style='color:black'" onmouseenter="style='color:blue'"> My Orders </a></div>
          	  </div>
       <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-user"></i>Account Settings</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">

              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="myProfile.jsp">Profile Information</a></h5></li>
                  <li><h5><a href="underConstruct.html">Notification Preferences</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
          <!-- /.megamenu-horizontal -->
        </div>
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-credit-card"></i>Payments</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">

              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="flopkartAccount.jsp">ZKart Bank Account</a></h5></li>
                  <li><h5><a href="wallet.jsp">Wallet</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
          <!-- /.megamenu-horizontal -->
        </div>
        <!-- /.side-menu -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-folder-open"></i>My Stuff</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">

              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="wishlist.jsp">My Wishlist</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
          <!-- /.megamenu-horizontal -->
        </div>
        <!-- /.side-menu -->

            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
            <form id="logout_form" action="./index.jsp">
              <input type="submit" class="head btn-link" style="color:black;font-weight:bold" value="LOGOUT" onclick="logout();"></input>
            </form>
            </div>

            <!-- ============================================== Other: END ============================================== -->

          </div>
          <!-- /.sidebar-filter -->
        </div>
        <!-- /.sidebar-module-container -->
      </div>
      <!-- /.sidebar -->
      <div class="col-md-9">
        <!-- ========================================== SECTION – HERO ========================================= -->


        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
                <div class="widget-header">
                		<div id="edit_name"><b><font size='4'>All Notification</font></b></div>
               
                </div>

			   
              <!-- /.sidebar-widget-body -->
            </div>
        </div>
        
      <!-- /.col -->

        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
             

	    <div class="row">
	      
         </div>
         <div class="row">
            <div >
              
	             <div id="edit_addr"> </div>
	             <span id="notify"></span>
	    
	    <div class="row">
	      
         </div>


         <div class="search-result-container " style="padding-bottom:25px;">
	      	 <div class="row">
	      		 <div class="col-md-12 sidebar"> </div>
	    	  	 </div>
	    	</div>
        <div class="search-result-container ">


	       <div id="change1" class="row">
	      	   <div class="col-md-4 sidebar"> </div>
		       <div  class="col-md-4 sidebar" >

	            <form id="logout_form2"><!-- action="./index.jsp" -->
		            
	            </form>

	           </div>
	           <div class="col-md-4 sidebar"> </div>
	       </div>
	    </div>


              <!-- /.sidebar-widget-body -->
            </div>
        <!-- /.search-result-container -->
             </div>
      <!-- /.col -->


        <div class="search-result-container ">
           
        <!-- /.search-result-container -->


      <!-- /.col -->

		    </div>



    </div>
    <!-- /.row -->
     </div>
  <!-- /.container -->
  </div>
 </div>
</div>
<!-- /.body-content -->
</div>
<div class="modal" id="changeModal"  role="dialog" align="center">
			<div class="modal-dialog" >

				<!-- Modal content-->
				<div class="row" style="display: table; width:730px ; padding-top:50px;">
				<div id="show1">
					<div class="col-sm-5"
						style="background-color: #2455f4; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">

						<div class="row" style="margin-top: 10px;">
							<h5 class="modal-title" align="left"
								style="font-family:sans-serif;padding-top:10px; color: white;">
								<b>Your new password must</b>
							</h5>
						<div class="row" style=" padding-left:15px;">
							<h5 class="modal-title" align="left"
								style="font-family: sans-serif; padding-top: 10px; color: white; ">
								* Be at least 4 characters in length</h5>
							<h5 class="modal-title" align="left"
								style="font-family: sans-serif;  padding-top: 10px;color: white; ">
								* Not be same as your current password</h5>
							<h5 class="modal-title" align="left"
								style="font-family: sans-serif;  padding-top: 10px;color: white; ">
								* Not contain common passwords</h5>
						</div>
						</div>
						<div class="row"
							style="padding-top: 100px; padding-bottom: 30px;">
							<img src="./images/login_img_1.png" align="middle"
								align="bottom" width="200px" />
						</div>
					</div>
					<div class="col-sm-6"
						style="background-color: #ffffff; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">

						<div class="row"
							style="padding-top: 15px; padding-bottom: 15px;"></div>

			<!-- =====================================SIGNUP-MODAL =========================================-->
			<div id="chng">
					<div class="floating-div"
								style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
								<span class='blocking-span'> <input type="password"
									id="pass_txt1" name="pass_txt1" class="inputText" required />
									<span class="floating-label"><b>Type Current Password</b></span>
								</span> <span class="warning" id="warning_pass_new1"
									style="align: left; padding-left: 0px; color: red; font-size: 80%"
									class="pull-left"> <b>Enter password</b>
								</span>
								<span class="warning" id="warning_pass_new4"
										style="align: left; padding-left: 0px; color: red; font-size: 80%"
										class="pull-left"> <b>Invalid Current Password</b>
								</span>

				    </div>

				    <div class="floating-div"
								style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
								<span class='blocking-span'> <input type="password"
									id="pass_txt2" name="pass_txt2" class="inputText" required />
									<span class="floating-label"><b>Type New Password</b></span>
								</span> <span class="warning" id="warning_pass_new2"
									style="align: left; padding-left: 0px; color: red; font-size: 80%"
									class="pull-left"> <b>Enter password</b>
								</span>
				    </div>


					<div class="floating-div"
									style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
									<span class='blocking-span'> <input type="password"
										id="pass_txt3" name="pass_txt3" class="inputText" required />
										<span class="floating-label"><b>Retype New Password</b></span>
									</span> <span class="warning" id="warning_pass_new3"
										style="align: left; padding-left: 0px; color: red; font-size: 80%"
										class="pull-left"> <b>Enter password</b>
									</span>
									<span class="warning" id="warning_pass_new5"
										style="align: left; padding-left: 0px; color: red; font-size: 80%"
										class="pull-left"> <b>Passwords Mismatch</b>
									</span>
					</div>


				<div class="row"
								style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
								<button type="button" id="login_btn"
									class="btn btn-primary btn-lg btn-block"
									style="border-radius: 0px; background-color: #F26419; border-width: 0mm"
									value="Login"  onclick="changepswd();">UPDATE PASSWORD</button>
				</div>

			</div>
		</div>
			</div>


			<div class="col-sm-1">
					<button type="button" class="close" data-dismiss="modal">x</button>
			</div>

			</div>
		</div>
</div>
<%@include file="footer.jsp" %>


<script>
$(document).ready(function()
{
	 
		

	$("#warning_lname").hide();
	$("#warning_pass_new1").hide();
	$("#warning_pass_new2").hide();
	$("#warning_pass_new3").hide();
	$("#warning_pass_new4").hide();
	$("#warning_pass_new5").hide();
	$("#warning_fname").hide();
	$("#change1").hide();
	$("#unregistered").hide();
	$("#show2").hide();
	shownotifications();



	$("#pass_txt1").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt2").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt3").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt4").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt5").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	headerFunctions(ctxPath);
  	$("#gender-row").hide();

	checkCookie();
	$('#myModal').modal('hide');
	var sm = document.getElementById('edit_name');
	sm.onclick = function() {
		$('#firstName').removeAttr('disabled');
		$('#lastName').removeAttr('disabled');
		$('#change1').show();
	};
	var sm = document.getElementById('edit_addr');
	sm.onclick = function() {
		$('#addr').removeAttr('disabled');
		document.getElementById("addr").style.backgroundColor = "#fff";
		$('#change1').show();
	};
});
<% AccessProperties ap = new AccessProperties(); %>
var imgServerURL = "<%=ap.getImageServerURL() %>";
function checkCookie()
{
    var user = getCookie("user_details");
    if (user != "")
    {
		setCookie("user_details", user, 30);
		console.log(JSON.parse(user));
		diplayUser(JSON.parse(user));
    }
    else
    {
    	logout();
    }
}

function resetCookie()
{
    var user = getCookie("user_details");
    if (user != "")
    {
    	var usr = JSON.parse(user);
    	usr.firstName = $('#firstName').val();
    	usr.lastName= $('#lastName').val();
    	usr.address = $("#addr").val();
    	user = JSON.stringify(usr);
		setCookie("user_details", user, 30);
		diplayUser(JSON.parse(user));
    }
    else
    {
    	logout();
    }
}

$("#dp1").hover(function(){
	$("#tooltiptext").show();
    $("#tooltiptext").text($("#ip_email").val()+"\n"+$("#userID").text());
});

function diplayUser(user)
{
	//swal(JSON.stringify(user));
	$('#firstName').val(user.firstName);
	$('#lastName').val(user.lastName);
	$('#ip_email').val(user.email);
	$('#ID').val(user.id);
	$('#ip_phone').val(user.phone);
	if(user.address != null)
	$("#addr").val(user.address);
	$('#userID').html(user.firstName+" "+user.lastName);
	$("#usernameView").html(user.firstName);
<%--     <% CreateProperties cp = new CreateProperties(); %> --%>
   
	if(!("pic_URL" in user) || user.pic_URL=="")

	{
		$("#no_dp").show();
		$("#dp").hide();
	}
	else
	{
        $('#dp1').attr('src',imgServerURL+user.pic_URL);
		$("#dp").show();
		$("#no_dp").hide();
	}
}

function logout()
{
	deleteCookie("user_details");
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
}



var ctxPath2="/zkart-app"

function shownotifications()
{

	var user = getCookie("user_details");
	console.log("anirudh"+ user);
	user = JSON.parse(user);
	var userId = user.id;
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url :  "http://localhost:8080/wishlist/user/"+userId,
				dataType : "json", // data type of response
				success : function(wishlistitems){
					console.log(wishlistitems.item);
					var data=" ";
					for(var i in wishlistitems)
					{
						
						console.log("new " + wishlistitems[i].item.quantity);
						if(wishlistitems[i].item.quantity > 0 && wishlistitems[i].item.newquantity == 0)
						{
							 data += "<table><tr ><td height='55%'width='15%'><div >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img  src="+imgServerURL+wishlistitems[i].item.imgUrl+" style='max-height:40%; max-width:40%;'></img></div></td><td height='55%' width='100%'><div>your wishlist containing  "+wishlistitems[i].item.listingName+" is avialiable in our stock, You can purchase now !</div></td></tr></table>";
							//$("#notify1").html(imgServerURL+wishlistitems[i].item.imgUrl);
											data +="<hr/>";
						   // $("#notify").html("The "+wishlistitems[i].item.listingName+"is out of stock");
						    $("#notify").html(data);
						}
					}
		    	},
		    	error:function() {
		        	swal("error occurred");
		    	}
			});
		}


</script>
</body></html>
