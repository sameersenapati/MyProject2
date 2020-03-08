<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<H1>WELCOME TO WHUSERTYPE</H1>
	<form action="save" method="post" modelAttribute="whuserType">
		<pre>
User Type:
   <input type="radio" name="userType" value="vendor"> vendor
   <input type="radio" name="userType" value="customer"> customer

User Code:
   <input type="text" name="userCode" />
User For:
  <input type="text" name="userFor" />
User Email:
  <input type="text" name="userMail" />
User Contact:
<input type="text" name="userContact" />  
User Id Type:
 <select name="userIdtype">
 <option>--select--</option>
 <option>PAN CARD</option>
 <option>AADHAR</option>
 <option>VOTERID</option>
 <option>OTHER</option>
 </select>
 If Other:
 <input type="text" name="ifOther" />
 Id Number:
 <input type="text" name="idNumber" />
 <input type="submit" value="CreateUser" />
</pre>
	</form>
	${message}
</body>

</html>