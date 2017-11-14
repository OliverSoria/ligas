
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> 
	<link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
	<%-- <link href="<c:url value="/resources/fonts/glyphicons-halflings-regular.woff2" />" rel="stylesheet" type="text/css"> --%>
	<link rel="icon" sizes="192x192" href="/test/resources/images/logoBox.png"">
		
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="theme-color" content="#52B3EA" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body ng-app="miAplicacionAngular">
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<!-- <a class="navbar-brand" href="#">Pet Store</a> -->
				<a class="navbar-brand" href="#">
					<img src="resources/images/logoFondoBlanco.png" 
						width="69" height="34" 
						style="margin-top:-7px; margin-left:-12px;" />
				</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarToCollapse">
					<span class="sr-only">Toggle Header</span> 
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="navbarToCollapse">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Ventas <span class="caret"></span> 
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Realizar Ventas</a></li>
							<li><a href="#">Consultar Ventas</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Catálogos <span class="caret"></span> 
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Productos</a></li>
							<li><a href="#">Servicios</a></li>
							<li><a href="#">Medicamentos</a></li>
						</ul>
					</li>
					<li><a href="#">Inventario</a></li>
					<li><a href="admin/usuarios">Usuarios</a></li>										
					<li><a href="#">Clientes</a></li>
					<li><a href="#">Bitácora</a></li>
				</ul>

<!-- 				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Búsqueda">
					</div>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search"></span>
					</button>

				</form> -->

					<form class="navbar-form navbar-right" role="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Búsqueda"
								name="q">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>

			</div>
		</div>
	</nav>
 
	<!-- <h2 id='encabezado'>Probando</h2> -->
    <div ng-controller="controlador">
    	<h2>Valor consultado: {{action}}</h2>
    	<!-- <button id='boton' class="btn btn-info" onclick="action()">Hacer Consulta</button> -->
    	<button id='boton' class="btn btn-info" ng-click="action2()">Consulta</button>
    	
    </div>
    
    <!--  <h3><a href="hello?name=Sally">Click here...</a></h3> -->
    
	<script src="<c:url value="/resources/js/angular.min.js" />"></script>
  	<script src="<c:url value="/resources/js/scripts.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</body>
</html>