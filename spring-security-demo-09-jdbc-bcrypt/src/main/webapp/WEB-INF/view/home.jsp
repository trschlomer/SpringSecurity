<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Home Page 	</title>
</head>
<body>
	<h2> Company Home Page</h2>
	<p>
	Welcome!
	</p>
	
	<hr>
	<!-- display user name and role -->
	<p>
	User: <security:authentication property="principal.username"/>
	<br><br>
	Role(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<security:authorize access="hasRole('MANAGER')">
	<!-- add a link to point to /leaders manager-->
	
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		(Only for managers)
	</p>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
	<!-- add a link to point to /systems admin-->
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for admin)
	</p>
	</security:authorize>
	<hr>
	<!-- add logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" method= "POST">
		<input type=submit value="Logout" />
	
	</form:form>

</body>
</html>