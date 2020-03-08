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
	<H1>WELCOME TO SHIPMENT TYPE REGISTER PAGE</H1>
	<form:form action="save" method="post"
		modelAttribute="purchaseOrderType">
		<pre>
OrderCode:
<form:input path="porderCode"/>
Reference Number:
<form:input path="preferenceNumber"/>
Quality Check:
<form:radiobutton path="pqualityCheck" value="Required" />REQUIRED
<form:radiobutton path="pqualityCheck" value="NotRequired" />NOT REQUIRED
Default Status:
<form:input path="pdefaultStatus" value="OPEN" readonly="true"/>
Description:
<form:textarea path="pdescription"/>
<input type="submit" value="PlaceOrder"/>
</pre>
	</form:form>
	${message}
</body>
</html>