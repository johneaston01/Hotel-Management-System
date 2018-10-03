<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="PaymentForm" action="<%=request.getContextPath() %>/PaymentController" method="post"></form>
<table border="0" align="center">
<caption>Payment Form</caption>
<tr> 
<td id="td">Card Holder Name:</td>
<td id=> <input type="text" name="CardHolderName" id="CardHolderId">
</td>
</tr>
<tr> 
<td id="td">Card Number:</td>
<td id=> <input type="text" name="CardNumber" id="CardNumber">
</td>
</tr>
<tr> 
<td id="td">CVV:</td>
<td id=> <input type="text" name="CVV" id="CVV">
</td>
</tr>
<tr> 
<td id="td">PIN:</td>
<td id=> <input type="password" name="PIN" id="PIN">
<input type="hidden" name="action" value="payment">
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<input type="submit" value="Submit"/>
</td>
</tr>
</table>
</body>
</html>