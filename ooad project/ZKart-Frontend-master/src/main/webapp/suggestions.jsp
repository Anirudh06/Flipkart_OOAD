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
   	<% String decodedQueryString = request.getParameter("value"); %>
   	
   	<div class="col-sm-14" id="listingDisplay"
		style="margin: 0px 0px 0px 0px; background-color: white">
		<hr />
		<div align="center">
			<font color="Blue">Books Added By You</font>
		</div>
		<hr />
		<div class="row" style="text-align: center">
			<div id="listing"></div>

		</div>
	</div>
   	
<script>
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
					data += "<div class='col-sm-4, box round3'>" + 
					"<a href='item.html?bookId=" + result.id +"'>"; /* + 
						 "<div><div class='image'>" + 
							"<img class='product-image' style='display: block; object-fit: contain; width: 215px; height: 215px;'" + 
							"src='" + result.imgUrl+"' alt=''>" +
						"</div></div>"+
				        "<div style = 'font-size:16px; text-align:centre'>" + result.listingName + "</div>"+
				        "<div style = 'font-size:16px; text-align:centre'>ISBN:&nbsp;&nbsp;" + result.itemId + "</div>"+
				        "<div style = 'font-size:16px; text-align:centre'>Category:&nbsp;&nbsp;" + result.id + "</div>"; */
			       
					data += "</div>";
					console.log(data);
				},
				error : function(err) {
					alert(err.status);
				}
			});
		}
		console.log(data);
		$('#listing').html(data);
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

   $( 'input[id$="hiddenSearch"]').autocomplete({
		source: itemSearch,
		response: function(event, ui){
			suggestionItems = ui.content;
			console.log(suggestionItems);
		},
		select: function(event, ui){
			suggestionItems = ui.content;
		}
	});
   
</script>

<input type="hidden" id="hiddenSearch"></input>

</body>
</html>