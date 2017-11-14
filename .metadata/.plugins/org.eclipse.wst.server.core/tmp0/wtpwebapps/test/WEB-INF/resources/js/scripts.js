function hello(){
	console.log('Presionaste el boton...');
}

function action() {
	$.ajax({
		type: 'GET',
		dataType: 'json',
		url: 'prueba',
		success: function(data) {
			$('#encabezado').html(data);
		}
	});
}

var controladorApp = angular.module('miAplicacionAngular', []);

controladorApp.controller("controlador", function($scope, $http){
	$scope.action = 5 + 3;
	
	$scope.action2 = function() {
		
		$http({
			 method: 'GET',
			// url: 'prueba',
			 url: 'admin/consulta',
			}).then(function successCallback(response) {
			// $scope.action = response.data;
			console.log(response.data);
		}, function errorCallback(response) {
			console.log(response);
			$scope.action = 'error';	
		});
	}
});

