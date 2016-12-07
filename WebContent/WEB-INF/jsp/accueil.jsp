<%@ include file="/WEB-INF/jsp/include.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="styleSheet" href="../Ressources/CSS/style.css"/>
<title>Insert title here</title>
</head>
<body>

	<div id="container">
		 <div class="container-fluid"> 
            <div class="navbar-header">
            	<a class="navbar-brand" href="#">Gestion d'Annuaire </a>
        	</div>
		<form:form action="" method="POST">
		<div class="nav navbar-nav navbar-right">
			 email : <input type="email" name="mail" placeholder="azerty@mail.com"/>
			 password: <input type="password" name="password" placeholder="**********"/>
			 <input type="submit" value="Connexion"/> 
		</div>
		</form:form>
		 </div>
			
			<div id="corps">
				<h2> Bienvenue sur la page d'accueil de gestion d'annuaire de personne</h2>
			</div>
		
		</div>
	</div>	
		<!-- boostrap jquery and boostrap javaScript link -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>