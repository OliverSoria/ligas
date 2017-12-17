//Move to it's own file
$(document).ready(function () {
	$('#tabla-usuarios').bootstrapTable({
	    url: 'usuarios/consulta',
	    columns: [
	    	{
	    		field: 'selector',
	    		radio: true,
	    		align: 'center',
	    		valign: 'middle'
	    		
	    	},
	    	{
	    		field: 'alias_usuario',
	    		title: 'Usuario',
	    		valign: 'middle',
	    		sortable: true
	    	}, 
	    	{
	    		field: 'nombre_usuario',
	    		title: 'Nombre',
	    		valign: 'middle',
	    		sortable: true
	    	}, 
	    	{
	    		field: 'paterno_usuario',
	    		title: 'Apellido Paterno',
	    		valign: 'middle',
	    		sortable: true
		    }, 
	    	{
		    	field: 'materno_usuario',
		    	title: 'Apellido Materno',
	    		valign: 'middle',
	    		sortable: true
	    	},
	    	{
		    	field: 'fecha_alta_usuario',
		    	title: 'Fecha de Alta',
		    	formatter: formateadorFecha,
		    	align: 'center',
	    		valign: 'middle',
	    		sortable: true
	    	},
	    	{
		    	field: 'fecha_baja_usuario',
		    	title: 'Fecha de Baja',
		    	formatter: formateadorFecha,
		    	align: 'center',
	    		valign: 'middle',
	    		sortable: true
	    	},
	    	{
		    	field: 'tipo_usuario',
		    	title: 'Tipo de Usuario',
		    	formatter: formateadorTipoUsuario,
		    	align: 'center',
	    		valign: 'middle',
	    		sortable: true
	    	}
	    	]
	});
});


// Moved to its own file
controladorApp.controller('controlador', function($scope, $http) {
	$scope.action = 5 + 3;
	
	$scope.action2 = function() {
		
		$http({
			 method: 'GET',
			// url: 'prueba',
			 url: 'usuarios/consulta',
			}).then(function successCallback(response) {
			// $scope.action = response.data;
			console.log(response.data);
		}, function errorCallback(response) {
			console.log(response);
			$scope.action = 'error';	
		});
		
	}
});

// Move to its own file
controladorApp.controller('operaciones_usuarios', function($scope, $http) {
	$scope.usuarios = [{}];
		
	$scope.getUsuarios = function() {
			
			$http({
				 method: 'GET',
				 url: 'usuarios/consulta',
				}).then(function successCallback(response) {
				console.log(response.data);
				$scope.usuarios = response.data;
			}, function errorCallback(response) {
				console.log(response);
			});
		}
	
	// Alta
	$scope.agregarUsuario = function() {
		$('#modal-formulario').modal('show');
	}
	
	// Elimina
	$scope.eliminarUsuario = function() {
		console.log('Eliminar usuario');
		
		var fila = $('#tabla-usuarios').bootstrapTable('getSelections');
		
		if (fila.length < 1) {
			$('#modal-info').modal('show');
		} else {
			// Ask for confirmation
		}
	}
	
	// Modificacion
	$scope.modificarUsuario = function() {
		console.log('Modificar usuario');
		
		var fila = $('#tabla-usuarios').bootstrapTable('getSelections');
		
		if (fila.length < 1) {
			$('#modal-info').modal('show');
		} else {
			$('#modal-formulario').modal('show');
		}
	}
});


// 
controladorApp.controller('alta_usuario', function($scope, $http) {
	
	var user = {
			
			id_usuario         : null,
			alias_usuario      : null,
			nombre_usuario     : null,
			paterno_usuario    : null,
			materno_usuario    : null,
			password_usuario   : null,
			fecha_alta_usuario : null,
			fecha_baja_usuario : null,
			tipo_usuario       : null
		}
	
	$scope.onAltaUsuarioAceptar = function(usuario) {
		user = {
		
			id_usuario         : 1              ,
			alias_usuario      : usuario.alias   ,
			nombre_usuario     : usuario.nombre  ,
			paterno_usuario    : usuario.paterno ,
			materno_usuario    : usuario.materno ,
			password_usuario   : usuario.password,
			fecha_alta_usuario : null            ,
			fecha_baja_usuario : null            ,
			tipo_usuario       : usuario.tipo
		}
		
		// console.log(user);
		
		// Sends bean to server
	    $http({
			 method: 'POST',
			 data : angular.toJson(user),
			 url: 'usuarios/alta',
			 headers: {
			        'Content-type': 'application/json'
			 }
			}).then(function successCallback(response) {
			console.log(response.data);
			$('#modal-formulario').modal('hide');
			$('#tabla-usuarios').bootstrapTable('refresh');
			$scope.usuario = null;
			//$scope.usuarios = response.data;
			console.log('todo bien');
		}, function errorCallback(response) {
			console.log(response.data);
			console.log('ocurrio un error');
			console.log(response.message);
		});
	}
	
	
	$scope.onAltaUsuarioCancelar = function(usuario) {
		$('#modal-formulario').modal('hide');
		$scope.usuario = null;
	}
	
	
	$scope.onFocusUsuario = function() {
		console.log('Entraste al campo usuario');
	}
	
	
	
});