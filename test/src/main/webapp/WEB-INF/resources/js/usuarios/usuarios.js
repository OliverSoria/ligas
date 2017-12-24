var usuarios = [];

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
	    	],
	    onLoadSuccess: function (data) {
	    	usuarios = data;
	    }
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
	$scope.alertUserClasses = 'alert alert-info alert-info-modal text-center'; 
	$scope.textAltaUsuario = 'Favor de capturar la informaci\u00F3n';
//	$scope.usuario = new Object();
//	$scope.usuario.alias = '';
	
	 
	//var aliases = usuarios.alias_usuario;
	
	$scope.onAltaUsuarioAceptar = function(usuario) {
		var tipoUsario = $('.selectpicker').selectpicker('val');
		
		user = {
		
			id_usuario         : 1               ,
			alias_usuario      : usuario.alias   ,
			nombre_usuario     : usuario.nombre  ,
			paterno_usuario    : usuario.paterno ,
			materno_usuario    : usuario.materno ,
			password_usuario   : usuario.password,
			fecha_alta_usuario : null            ,
			fecha_baja_usuario : null            ,
			tipo_usuario       : tipoUsario
		}
		
		// Sends bean to server
	    $http({
			 method: 'POST',
			 data : angular.toJson(user),
			 url: 'usuarios/alta',
			 headers: {
			        'Content-type': 'application/json'
			 }
			}).then(function successCallback(response) {
			//console.log(response.data);
			$('#modal-formulario').modal('hide');
			$('#tabla-usuarios').bootstrapTable('refresh');
			$scope.usuario = null;
			$scope.confirmPwd = null;
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
		$scope.confirmPwd = null;
	}
	
	
	$scope.onFocusUsuario = function() {
		validaUsuario();
	}
	
	$scope.onFocusNombre = function() {
		validaNombreApellidos('Nombre');
	}
	
	$scope.onFocusPaterno = function() {
		validaNombreApellidos('Apellido paterno');
	}
	
	$scope.onFocusMaterno = function() {
		validaNombreApellidos('Apellido materno');
	}
	
	$scope.onFocusPassword = function() {
		$scope.textAltaUsuario = "Introduzca la contrase\u00F1a que desea utilizar";
		$scope.alertUserClasses = 'alert alert-info alert-info-modal text-center';
	}
	
	$scope.onFocusConfirmar = function() {
		$scope.textAltaUsuario = "Confirme la contrase\u00F1a que desea utilizar";
		$scope.alertUserClasses = 'alert alert-info alert-info-modal text-center';
	}
	
	$scope.onFocusTipo = function() {
		$scope.textAltaUsuario = "Seleccione el tipo de usuario";
		$scope.alertUserClasses = 'alert alert-info alert-info-modal text-center';
	}
	
	$scope.onKeyUpUsuario = function() {
		validaUsuario();
	}
	
	$scope.onKeyUpNombre = function() {
		validaNombreApellidos('Nombre');
	}
	
	$scope.onKeyUpPaterno = function() {
		validaNombreApellidos('Apellido paterno');
	}
	
	$scope.onKeyUpMaterno = function() {
		validaNombreApellidos('Apellido materno');
	}
	
	
	// Vallidacion del nombre de usuario
	function validaUsuario() {
		// Valida que sea diferente de nulo y de cero
		if ($scope.usuario == undefined || 
				$scope.usuario.alias == undefined || 
				$scope.usuario.alias.length < 1) {
			$scope.textAltaUsuario = "Introduzca el usuario que desea utilizar";
			$scope.alertUserClasses = 'alert alert-info alert-info-modal text-center';
		// Valida que los carateres sean validos
		} else if(!validaNickName($scope.usuario.alias)) {
			$scope.textAltaUsuario = "No es posible utilizar caracteres especiales";
			$scope.alertUserClasses = 'alert alert-danger alert-info-modal text-center';
		// Valida que al menos tenga 6 caracteres
		} else if($scope.usuario.alias.length < 6) {
			$scope.textAltaUsuario = "Su usuario debe tener al menos 6 caracteres";
			$scope.alertUserClasses = 'alert alert-danger alert-info-modal text-center';
		// Valida si esta disponible
		} else {
			for (var i = 0; i < usuarios.length; i++) {
				// console.log(i + ' ' + usuarios[i].alias_usuario + ' ' + $scope.usuario.alias);
				if (usuarios[i].alias_usuario === $scope.usuario.alias) {
					$scope.textAltaUsuario = "Usuario no disponible";
					$scope.alertUserClasses = 'alert alert-danger alert-info-modal text-center'; 
					break;
				} else {
					$scope.textAltaUsuario = "Usuario disponible";
					$scope.alertUserClasses = 'alert alert-success alert-info-modal text-center'; 
				}
			}
		}
	}
	  
	function validaNombreApellidos(texto) {

		var bean = $scope.usuario;
		var variableBean;
		
		if (bean != undefined) {
			switch (texto) {
			case 'Nombre':
				variableBean = $scope.usuario.nombre;
				break;
			case 'Apellido paterno':
				variableBean = $scope.usuario.paterno;
				break;
			case 'Apellido materno':
				variableBean = $scope.usuario.materno;
				break;
			}
		}
		
		// Valida que sea diferente de nulo y de cero
	    if (bean == undefined || 
	    		variableBean == undefined ||
	    		variableBean.length < 1) {
	      $scope.textAltaUsuario = "Introduzca el " + texto.toLowerCase()  + " del usuario";
	      $scope.alertUserClasses = 'alert alert-info alert-info-modal text-center';
	    // Valida que los carateres sean validos
	    } else if(!validaNombreApellido(variableBean)) {
	      $scope.textAltaUsuario = "No es posible utilizar caracteres especiales";
	      $scope.alertUserClasses = 'alert alert-danger alert-info-modal text-center';
	    // Valida que al menos tenga 2 caracteres
	    } else if(variableBean.length < 2) {
	      $scope.textAltaUsuario = "Su " + texto.toLowerCase() + " debe tener al menos 2 caracteres";
	        $scope.alertUserClasses = 'alert alert-danger alert-info-modal text-center';
	    } else {
	      $scope.textAltaUsuario = texto + " correcto";
	      $scope.alertUserClasses = 'alert alert-success alert-info-modal text-center'; 
	    }
	  }	
	
});