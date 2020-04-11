<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome to PurchaseOrder Data Page</h3>
	
	<a href="excel"> <img src="../resources/images/excel-logo.png"
		title="Convert To ExcelFormat" width="40" height="50" /></a>
	<a href="pdf"> <img src="../resources/images/PDFicon.png"
		title="Convert To Pdf Format" width="40" height="50" />
	</a>
		<c:choose>
		<c:when test="${!empty list}">
			<table border="1" style="color: brown">

				<tr>
					<th>ID</th>
					<th>CODE</th>
					<th>NUMBER</th>
					<th>QUALITY</th>
					<th>STATUS</th>
					<th>DESCRIPTION</th>
					<th colspan="4">OPTIONS</th>
				</tr>
				<c:forEach items="${list}" var="ob">
					<tr>
						<td>${ob.id}</td>
						<td>${ob.orderCode}</td>
						<td>${ob.referenceNumber}</td>
						<td>${ob.qualityCheck}</td>
						<td>${ob.status}</td>
						<td>${ob.description}</td>
						<td><a href="delete?pid=${ob.id}"><img
								src="../resources/images/delete.jpg" title="delete" width="50"
								height="40"></a></td>
						<td><a href="edit?pid=${ob.id}"><img
								src="../resources/images/edit.png" title="edit" width="30"
								height="30"></a></td>
						<td><a href="view?pid=${ob.id}"><img
								src="../resources/images/view.png" title="view" width="40"
								height="40"> </a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<h4>NO DATA FOUND!!</h4>
		</c:otherwise>
	</c:choose>
	
</body>
</html>