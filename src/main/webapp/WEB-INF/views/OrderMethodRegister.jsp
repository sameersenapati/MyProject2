<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<H1>WELCOME TO ORDER METHOD REGISTER PAGE</H1>
	<form:form action="save" method="post" modelAttribute="orderMethod">
		<pre>
	OrderMode:
	<form:radiobutton path="orderMode" value="sale" />SALE
	<form:radiobutton path="orderMode" value="purchase" />PURCHASE
	 OrderCode:
	<form:input path="orderCode" />
	OrderType:
	<form:select path="orderType">
			<form:option value="">--select--</form:option>
			<form:option value="FIFO">FIFO</form:option>
			<form:option value="LIFO">LIFO</form:option>
			<form:option value="FCFO">FCFO</form:option>
			<form:option value="FEFO">FEFO</form:option>
		</form:select>
	Order Accept:
	<form:checkbox path="orderAcpt" value="Multi-Model" />Multi Model
	<form:checkbox path="orderAcpt" value="AcceptReturn" />AcceptReturn

	Description:
	<form:textarea path="description" />
		<input type="submit" value="Create" />
		</pre>
	</form:form>
	${message}
</body>
</html>