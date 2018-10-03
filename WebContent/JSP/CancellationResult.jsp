<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--META TAGS-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--STYLE SHEETS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSS/home_style.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSS/CustomerPage_Style.css" />

<!--SCRIPTS-->
<script type="text/javascript">history.forward();</script>

<!--TITLE OF PG-->
<title>Booking Cancellation Successful</title>
</head>
<body>

<!--HEADER-->
<!-- TOP GREEN STRIP-->
<div id="top_strip">

<!-- EXOTIC LOGO-->
<center>
<div id="logo">
<a href="<%=request.getContextPath() %>/JSP/Login.jsp"><img src="<%=request.getContextPath() %>/images/logo.jpg" /></a>
</div>
</center>

<div id="user">
WELCOME 
<br/>
<a href="<%=request.getContextPath() %>/JSP/Logout.jsp">Logout</a>
</div>

<div id="strip">
</div>

<!--TOP MENU-->
<div id="top_menu" >
<ul id="menu" style="list-style:none;">
<li><a href="<%=request.getContextPath() %>/JSP/Home.jsp">Home</a> </li>

</ul>
</div>
</div>

<!-- DROP MENU-->
<div class="drop-menu">
<span class="plus">Search Rooms</span>
<ul  style="list-style:none;" class="sub-menu">


<li><a href="<%=request.getContextPath() %>/JSP/searchByCategory.jsp" >&nbsp;View by Category</a> </li>
<li><a href="<%=request.getContextPath() %>/JSP/searchByTariff.jsp" >&nbsp;&nbsp;View by Tariff</a> </li>
<li><a href="<%=request.getContextPath() %>/JSP/SearchViewAll.jsp">&nbsp;&nbsp;View all rooms</a> </li>
</ul>
</div>


<!--MIDDLE STRIP-->
<div id="middle_strip">

 <div id="customer_navigation_table">
	<table border="1" cellpadding="25" style="border-collapse:collapse">
	<tr>
	      <td><a href="<%=request.getContextPath() %>/JSP/customerHome.jsp">Customer Home</a></td>
	   </tr>
	   <tr>
	      <td><a href="<%=request.getContextPath() %>/JSP/RoomBooking.jsp">Book Room</a></td>
	   </tr>
	   <tr>
	      <td><a href="<%=request.getContextPath() %>/JSP/CancelBooking.jsp">Cancel Room</a></td>
	   </tr>
	</table>
 </div>
 
 <div id="cancel_success_message">
<%
String result=request.getAttribute("Result").toString();
String bookingId=request.getAttribute("BookingId").toString();
if(result=="true")
{
	
%> The Room with Booking Id <%=bookingId %>Has been Cancelled Successfully <%
}
else
{
	%> Cancellation is not Possible. 
	 <%
}
%>

</div>
 	
</div>


<!--FOOTER-->
<div id="footer">
<div id="footer_content">
@2017 Online Hotel System ltd.
                   Call :6602382249
</div>
</div>



</body>
</html>