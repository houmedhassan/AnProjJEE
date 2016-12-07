<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/ressources/css/style.css" />" >
<title>Description d'une personne</title>
</head>
<body>
	<h2> Personne </h2>
	<a href="listofPerson?idGroup=${pers.idGroup}"> aller à liste des personne de son groupe </a>
	<hr>
	
	Numero de la personne : <c:out value="${pers.idPerson}"/> <br/>
	Nom : <c:out value="${pers.lastName }"/><br/>
	Prénom : <c:out value="${pers.firstName}"/><br/>
	Site web : <c:out value="${pers.webSite}"/><br/>
	
</body>
</html>