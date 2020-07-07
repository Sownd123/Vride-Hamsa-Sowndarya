<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: #777;
}

.bg {
  /* The url image used */
  background-image: url("https://d540vms5r2s2d.cloudfront.net/mad/uploads/mad_blog_5ea68ab1484001587972785.png");

  /* Complete height of image */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.caption {
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  text-align: center;
  color: #000;
}

.caption span.border {
  background-color: #111;
  color: #fff;
  padding: 18px;
  font-size: 25px;
  letter-spacing: 10px;
}

h3 {
  letter-spacing: 5px;
  text-transform: uppercase;
  font: 20px "Lato", sans-serif;
  color: #111;
}
.button {
  border-radius: 4px;
  background-color: black;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 20px;
  width: 200px;
  height:50px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}


.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 45px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
</head>
<body>

<div class="bg">
<div class="caption">
    <span class="border">VRIDE</span><br>
    <span class="border">CAR POOLING SYSTEM</span>
  </div>
</div>
<div align="center">
	<form method="get" action="search">
		<input type="text" name="keyword" />
		<input type="submit" value="Search" /> 
	</form>
	<h3><a href ="new"><center><button class="button"><span>New Rider</span></button></a></center></a></h3>
	<table border="1" cellpadding="5">
		<tr>
			<th>Rider-Id</th>
			<th>Rider-Name</th>
			<th>Rider-Email</th>
			<th>Rider-Address</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listRider}" var="rider">
		<tr>
			<td>${rider.RiderId}</td>
			<td>${rider.RiderName}</td>
			<td>${rider.RiderEmail}</td>
			<td>${rider.RiderAddress}</td>
			<td>
			<a href="edit?id=$(rider.RiderId)">Edit</a>
			&nbsp;&nbsp;&nbsp;
			<a href="delete?id=$(rider.RiderId)">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
