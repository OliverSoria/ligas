<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<tiles:insertDefinition name="default">
	<tiles:putAttribute name="body">
		<div>
		
		<!-- Inicio de la página -->
			
			<h1 class="text-center">Usuarios</h1>
			<div class="container">
				<table id="tabla-usuarios" 
			       data-toggle="table"
			       data-height="450"
			       data-pagination="true"
			       data-search="true"
			       data-click-to-select="true">
			    </table>
			    
			    <div class="row text-center" ng-controller="operaciones_usuarios">
			    	<button id='boton2' class="btn btn-danger" ng-click="eliminarUsuario()">Eliminar</button>
			    	<button id='boton3' class="btn btn-warning" ng-click="modificarUsuario()">Modificar</button>
			    	<button id='boton1' class="btn btn-success" ng-click="agregarUsuario()">Agregar</button>
			    </div>
				  
			</div>
		<!-- Fin de la página -->
		</div>
	</tiles:putAttribute>
	
</tiles:insertDefinition>