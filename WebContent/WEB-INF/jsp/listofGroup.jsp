<%@ include file="/WEB-INF/jsp/include.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="<c:url value="/ressources/css/style.css" />" >
	<title>Liste des Groupes </title>
	</head>
	<body>
		<h2> la liste de Groupe </h2>
		<a href="#">retour</a>
		<hr>
		
		<table>
			<tr>
				<th>Numero de Groupe </th>
				<th>Nom de Groupe </th>
			</tr>
				<c:forEach items="${listGroup}" var="group">
					<tr>
						<td> <a href="listofPerson?idGroup=${group.idGroup}"> <c:out value="${group.idGroup}"/></a></td>
						<td> <a href="listofPerson?idGroup=${group.idGroup}"> <c:out value="${group.name}"></c:out></a></td>
					</tr>
				</c:forEach>
			
		</table>
		
	</body>
</html>