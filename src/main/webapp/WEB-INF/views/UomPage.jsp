<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="UserMenu.jsp" %>
<div class="container">
<div class="card">
<div class="card-header bg-primary text-center text-yellow text-uppercase">
	<h1>WELCOME TO UOM PAGE</h1>
	</div>
	<div class="card-body">
	<form:form action="save" method="post" modelAttribute="uomType">
	
		
		<div class="row">
						<div class="col-4">
						<label for="uomType">UOM TYPE</label>
						</div>
							<div class="col-4">
							<form:select path="uomType" class="form-control">
								<form:option value="">-SELECT-</form:option>
								<form:option value="PACKING">PACKING</form:option>
								<form:option value="NO PACKING"> NO PACKING</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>
						
						
	<!-- UomType:
	<select name="uomType">
		<option>--select--</option>
		<option>PACKING</option>
		<option>NOPACKING</option>
	</select> -->
<div class="row">
						<div class="col-4">
							<label for="uomModel">UOM MODEL</label>
						</div>
						<div class="col-4">
							<form:input path="uomModel" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>


<!-- 	 UomModel:
	<input type="text" name="uomModel" /> 
 -->	
 <div class="row">
						<div class="col-4">
							<label for="udesc">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="udesc" class="form-control"/>

						</div>
						<div class="col2-4"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="CREATE UOM" class="btn btn-success"/>
							 <input type="reset" value="Clear" class="btn btn-danger"/>

						</div>
					</div>
 
 <!-- Description:
	<textarea name="udesc"></textarea>
	<input type="submit" value="CREATE UOM"> 
 -->	
	</form:form>
	<c:if test="${!empty message }">
				<div class="card-footer bg-info text-red text-center"><b>${message}</b></div>
			</c:if>
	<%-- ${message} --%>
	</div>
	</div>
	</div>
	
</body>
</html>