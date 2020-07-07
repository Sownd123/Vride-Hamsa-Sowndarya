<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<h3>New Rider</h3>
<form:form action="save" method="post" modelAttribute="rider">
   <table border="0" cellpadding="5">
   <tr>
   <td>Name:<input type="text"></td>
   <td><form:input path="RiderName"/></td>
   </tr>
   <tr>
   <td>Email:<input type="text"></td>
   <td><form:input path="RiderEmail"/></td>
   </tr>
   <tr>
   <td>Address:<input type="text"></td>
   <td><form:input path="RiderAddress"/></td>
   </tr>
   <tr>
   <td colspan="2"><input type="submit" value="Save"/></td>
   </tr>
   </table>
</form:form>


</div>
</body>
</html>
