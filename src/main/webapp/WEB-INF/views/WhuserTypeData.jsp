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
	<H3>WELCOME TO WHUSERTYPE DATA PAGE</H3>
	<a href="excel"><img src="../resources/images/excel.jpg"
		title="Convert To Excel Format" width="40" height="50" /></a>
	<a href="pdf"><img src="../resources/images/PDFicon.png"
		title="Convert To Pdf Format" width="40" height="50" /></a>
	<c:choose>
		<c:when test="${!empty list}">
			<table border="1">
				<tr>
					<th>USER TYPE</th>
					<th>USER CODE</th>
					<th>USER FOR</th>
					<th>USER MAIL</th>
					<th>USER CONTACT</th>
					<th>USER ID TYPE</th>
					<th>IF OTHER</th>
					<th>ID NUMBER</th>
					<th colspan="4">OPTIONS</th>
				</tr>
				<c:forEach items="${list}" var="ob">
					<tr>
						<td>${ob.userId}</td>
						<td>${ob.userType}</td>
						<td>${ob.userCode}</td>
						<td>${ob.userFor}</td>
						<td>${ob.userMail}</td>
						<td>${ob.userContact}</td>
						<td>${ob.userIdtype}</td>
						<td>${ob.ifOther}</td>
						<td>${ob.idNumber}</td>
						<td><a href="delete?wid=${ob.userId}"><img
								src="../resources/images/delete.jpg" title="delete" width="20"
								height="20" /> </a></td>
						<td><a href="edit?wid=${ob.userId}"><img
								src="../resources/images/edit.png" title="edit" width="20"
								height="20" /></a></td>
						<td><a href="view?wid=${ob.userId}"><img
								src="../resources/images/view.png" title="view" width="20"
								height="20" /></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<h4>NO DATA FOUND!!</h4>
		</c:otherwise>
	</c:choose>
	${message}
</body>
</html>