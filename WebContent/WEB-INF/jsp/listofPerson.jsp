<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/ressources/css/style.css" />" >

<title>Liste des personnes </title>
</head>
<body>
	<h2> Liste des personnes du groupe </h2>
	
	<a href="listofGroup">aller à la liste des groupes</a>
	<hr>
	
	<table>
		<tr>
			<th>Numero </th>
			<th>Nom </th>
			<th>Prénom </th>
			<th>site web </th>
		</tr>
		<c:forEach items="${listPerson}" var="person">
			<tr>
				<td> <a href="person?idPerson=${person.idPerson}"> <c:out value="${person.idPerson}"/></a></td>
				<td> <a href="person?idPerson=${person.idPerson}"> <c:out value="${person.lastName}"></c:out> </a></td>
				<td> <c:out value="${person.firstName}"/></td>
				<td> <c:out value="${person.webSite}"/></td>
			</tr>
		</c:forEach>		
	</table>
		
</body>
</html>