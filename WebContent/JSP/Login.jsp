<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--META TAGS-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--STYLE SHEETS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSS/home_style.css" />

<!--SCRIPTS-->
<script type="text/javascript" src="<%=request.getContextPath() %>/JS/LoginValidation.js"></script>
<script>history.forward();</script>
<!--TITLE OF PG-->
<title>Exotic-Home</title>


</head>
<body>

<!--HEADER-->
<!-- TOP GREEN STRIP-->
<div id="top_strip">


<center>
<div id="logo">
<a href="<%=request.getContextPath() %>/JSP/Login.jsp"><img src="<%=request.getContextPath() %>/images/logo.jpg" /></a>
</div>
</center>

<div id="strip">
</div>

<!--TOP MENU-->
<div id="top_menu" >
<ul id="menu" style="list-style:none;">
<li><a href="<%=request.getContextPath() %>/JSP/Login.jsp">Home</a> </li>
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


<!--LOGIN-->
<div id="login">
<form name="LoginForm" onsubmit="return validateLoginForm();" action="<%=request.getContextPath() %>/LoginController" method="post">
<table border="0" align="center">
<caption>Login Form</caption>
<tr> 
<td id="td">User Id:</td>
<td id=> <input type="text" name="userId" id="userId">
</td>
</tr>
<tr> 
<td id="td">Password:</td>
<td id=> <input type="password" name="password" id="password">
<input type="hidden" name="action" value="login">
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<input type="submit" value="Sign in"/></td>
</tr>
<tr>
<td> New Customer?</td>
<td> <a href="<%=request.getContextPath() %>/JSP/Registration.jsp"><u>Register</u></a></td>
</table>
</form>

<%if(request.getAttribute("fail")!=null)
	{%>
	<p><%=request.getAttribute("fail") %></p>
	<%} %>
	
	<%if(request.getAttribute("msg")!=null)
	{%>
	<p><%=request.getAttribute("msg") %></p>
	<%} %>
	
	

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