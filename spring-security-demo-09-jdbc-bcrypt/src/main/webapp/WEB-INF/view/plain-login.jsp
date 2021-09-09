<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>custom login page</title>
</head>
<body>

<h3> The Custom Login Page</h3>

<style>
	.failed{
	color:red;
	}

</style>
	<form:form action = "${pageContext.request.contextPath}/authenticateTheUser" method ="POST">
		
		<!-- Check for log in error -->
		<c:if test="${param.error != null }">
		
		<i class="failed">Invalid username/password</i>
		</c:if>
		<p>
		User name: <input type="text" name="username"/>
		</p>
		<p>
		Password: <input type="password" name="password"/>
		</p>
		<input type="submit" value="Login" />
		
	</form:form>

</body>
</html>