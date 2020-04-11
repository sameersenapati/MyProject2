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
	<H3>WELCOME TO SALEORDER REGISTER PAGE</H3>
	<form:form action="save" method="post" modelAttribute="saleOrder">
		<pre>
OrderCode:
<form:input path="orderCode" />
Ref Number:
<form:input path="refNumber" />
Stock Mode:
<form:radiobutton path="stockMode" value="Grade" />GRADE
<form:radiobutton path="stockMode" value="Margin" />MARGIN
Stock Source:
<form:select path="stockSource">
<form:option value="">--SELECT--</form:option>
<form:option value="OPEN">OPEN</form:option>
<form:option value="AVAIL">AVAIL</form:option>
<form:option value="REFUND">REFUND</form:option>
</form:select>
Default Status:
<form:input path="status" readonly="true" />
Description:
<form:textarea path="description" />
<input type="submit" value="CreateSaleOrder" />
</pre>
	</form:form>
	${message}
</body>
</html>