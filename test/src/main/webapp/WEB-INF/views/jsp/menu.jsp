<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<spring:url value="/home" var="homeUrl" htmlEscape="true"/>
			<a class="navbar-brand" href="${homeUrl}">
				<spring:url value="/resources/images" var="images" />
				<img src="${images}/logoFondoBlanco.png" 
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
						<spring:url value="/usuario/ventas" var="usuarioVentasUrl" htmlEscape="true"/>
						<li><a href="${usuarioVentasUrl}">Realizar Ventas</a></li>
						<spring:url value="/usuario/ventas-consulta" var="usuarioVentasConsultaUrl" htmlEscape="true"/>
						<li><a href="${usuarioVentasConsultaUrl}">Consultar Ventas</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						Catálogos <span class="caret"></span> 
					</a>
					<ul class="dropdown-menu" role="menu">
						<spring:url value="/supervisor/productos" var="supervisorProductosUrl" htmlEscape="true"/>
						<li><a href="${supervisorProductosUrl}">Productos</a></li>
						<spring:url value="/supervisor/servicios" var="supervisorServiciosUrl" htmlEscape="true"/>
						<li><a href="${supervisorServiciosUrl}">Servicios</a></li>
						<spring:url value="/supervisor/medicamentos" var="supervisorMedicamentosUrl" htmlEscape="true"/>
						<li><a href="${supervisorMedicamentosUrl}">Medicamentos</a></li>
					</ul>
				</li>
				<spring:url value="/supervisor/inventario" var="supervisorInventarioUrl" htmlEscape="true"/>
				<li><a href="${supervisorInventarioUrl}">Inventario</a></li>
				<spring:url value="/administrador/usuarios" var="administradorUsuariosUrl" htmlEscape="true"/>
				<li><a href="${administradorUsuariosUrl}">Usuarios</a></li>										
				<spring:url value="/administrador/clientes" var="administradorClientesUrl" htmlEscape="true"/>
				<li><a href="${administradorClientesUrl}">Clientes</a></li>
				<spring:url value="/supervisor/bitacora" var="supervisorBitacoraUrl" htmlEscape="true"/>
				<li><a href="${supervisorBitacoraUrl}">Bitácora</a></li>
			</ul>
				<!-- <form class="navbar-form navbar-right" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Búsqueda"
							name="q">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form> -->
		</div>
	</div>
</nav>