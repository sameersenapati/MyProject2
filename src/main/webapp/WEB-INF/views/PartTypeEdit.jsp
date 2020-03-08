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
	<H2>WELCOME TO PART TYPE EDIT PAGE</H2>
	<form:form action="update" method="POST" modelAttribute="partType">
		<pre>
Part Id:
 <form:input path="partId" readonly="true" />
Part Code:
 <form:input path="partCode" />
WIDTH:
<form:input path="partWidth" />
LENGTH:
<form:input path="partLength" />
HEIGHT:
<form:input path="partHeight" />
BASE COST:
<form:input path="baseCost" />
BASE CURRENCY:
<form:select path="partCurrency">
<form:option value="">--select--</form:option>
<form:option value="INR">INR</form:option>
<form:option value="USD">USD</form:option>
<form:option value="AUS">AUS</form:option>
<form:option value="ERU">ERU</form:option>
</form:select>
Description:
<form:textarea path="partDesc" />
<input type="submit" value="Update" />
 </pre>
	</form:form>
</body>
</html>