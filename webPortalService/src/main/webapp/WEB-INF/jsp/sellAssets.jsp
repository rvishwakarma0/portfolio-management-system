<%@ page language="java" contentType="text/html;  charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="style/sellAssets-style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<title>View Networth</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#"> <img
				src="https://images.vexels.com/media/users/3/136559/isolated/preview/624dd0a951a1e8a118215b1b24a0da59-pharmacy-logo-by-vexels.png"
				alt="" width="30" height="24" class="d-inline-block align-text-top">
				Portfolio Manager
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarMenu"
				aria-controls="navbarMenu" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarMenu">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="/Home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewNetworth">Calculate
							Networth</a></li>
					<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 ">
				<div class="card text-center shadow-lg">
					<img class="card-img-top img-fluid"
						src="http://ukbusinessbrokers.com/wp-content/uploads/asset-share-sale.jpg"
						style="width: 600x; height: 300px;" alt="Card image cap">
					<div class="card-block">
						<h4 class="card-title">Sell Assets</h4>
						<p class="card-text">Select the assets which you want to sell.</p>
						<br>
						<br>
						<!--   	<select id="lstFruits" multiple="multiple">
                      	<c:forEach items="${asset}" var="temp">
                        <option>${temp.assetid}</option>
                        <p> ${ fn:length(assets)}</p>
                        </c:forEach>
                        </select>    -->


						<%--    
                        <% Map<String,Integer> stockIdList=new HashMap<String,Integer>();
                        Map<String,Integer> mfAssetList=new HashMap<String,Integer>();                        
                        %>
                        <% if(${temp.type}=="MF"){
                        	stockIdList.put(temp.assetid,temp.units);
                        }
                        else{stockIdList.put(temp.assetid,temp.units);}
                        %> 
                        --%>
						<!--    <form:form action="/viewNetworth" method="POST" modelAttribute="SellObjectMap">
                         <c:forEach items="${asset}" var="temp" >
                         <input type="checkbox" id="${temp.assetid}" name="${temp.assetid}">${temp.assetid } &nbsp;&nbsp;&nbsp;<input type="number" id="quantity" name="quantity" min="1" max="${temp.units}"><br> 
                         </c:forEach>
                         
                         
                         </form:form> -->
						<%-- List<String> l=new ArrayList<>(); --%>
						<form method="post" onSubmit=" return checker();"
							action="/sellAssets">
							<table border="1" class=table
								style="margin-left: auto; margin-right: auto;">
								<tr>
									<th scope=col>Asset Name</th>
									<th scope=col>Units to be sold</th>
								<tr>
									<c:forEach items="${asset}" var="temp">
										<tr>
											<td scope=row><input type="checkbox"
												value="${temp.assetid}" name="selected">${temp.assetid }
											</td>
											<td scope=row><input type="number" id="quantity"
												name="quantity" value="0" min="0" max="${temp.units}"></td>
									</c:forEach>
								</tr>
							</table>
							<button type="submit" name="submit"
								class="btn btn-black btn-primary">NetWorth</button>
						</form>




					</div>
				</div>

				<script type="text/javascript">
            	var a=document.getElementById("quantity")
            	function checker(){
                	var count=0;
					var l = document.getElementsByName("selected");
					for(var i=0;i<l.length;i++){
						if(l[i].checked)count++;
					}
					//console.log(count);
					 if(count==0){
						alert("Please select a value");
						return false;
					}else return true; 	
                }
            </script>

			</div>

			<!-- <div class="navbar bg-light footer transparent ">
				&copy; Copyright 2021
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i
					class="fab fa-facebook"> </i> <i class="fab fa-twitter"> </i> <i
					class="fab fa-google"> </i> <i class="fab fa-instagram"> </i> <i
					class="fab fa-youtube"> </i>
			</div> -->
</body>
</html>