
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ajout d'une personne</title>
<link rel="stylesheet" href="<c:url value="/ressources/css/style.css" />" >
</head>
<body>
	
	<h2> Ajout d'une Personne </h2>
	<hr>
	<form:form  method="POST" modelAttribute="pers" action="addPerson">
		 
		 <fieldset>
		 	
		 	<label>Id Person :</label>
		 	
		 	<form:input path="idPerson" /><br/>
		 
		 	<form:errors path="idPerson" cssClass="error"/> <br/>
		 	
		 	
		 	<label> Nom : </label>
		 	<input type="text" name="lastName"/><br/>
		 	 <%--<!--<form:input path="lastName"/>-->--%>
		 	<form:errors path="lastName" cssClass="error"/> <br/>
		 	
		 	
		 	<label> Prénom : </label>
		 	<!-- <input type="text" name="firstName"/>-->
		 	 <form:input path="firstName"/><br/>
		 	<form:errors path="firstName"/> <br/>
		 	
		 	<label> Adresse Mail : </label>
		 <!--	<input type="email" name="mail"/>-->
		 	
		 	 <form:input path="mail"/><br/>
		 	<form:errors path="mail" cssClass="error"/> <br/>
		 	
		 	<label> site Web: </label>
		 	<!--<input type="text" name="webSite"/>-->
		 	
		 	<form:input path="webSite"/><br/>
		 	<form:errors path="webSite" cssClass="error"/><br/>
		 	
		 	
		 	<label> Date de Naissance : </label>
		 	<!--<input type="date" name="birthDay"/>-->
		  	<form:input path="birthDay"/><br/>
		 	<form:errors path="birthDay" cssClass="error"/><br/>
		 	
		 	<label> Password : </label>
		 	<!--<input type="password" name="password"/>-->
		  	<form:input path="password"/><br/>
		 	<form:errors path="password" cssClass="error"/><br/>
		 	
		 <label> Groupe: </label>
		  <form:select path="idGroup" multiple="false">
	            <form:option value="" label=" " />
	            <form:options items="${listGroup}" itemValue="idGroup" itemLabel="name" />
	       </form:select> <br/>
	       
		  <form:errors path="idGroup" cssClass="error"/><br/>
		  
		  	<input type="submit" value="Ajouter"/>
		 </fieldset>
	</form:form>
	
	<script>

	var lastNameError = document.getElementById('lastName.errors').getAttribute('error');

	if(lasNameError!==null){
		elmt.style.width = "800px";
	}
	</script>
</body>
</html>