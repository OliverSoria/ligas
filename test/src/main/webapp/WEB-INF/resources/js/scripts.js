
var controladorApp = angular.module('SistemaGestionApp', []);

// Don't move
function formateadorFecha(value, row, index) {
    var resultado = '-';
        
    if (value != null) {
    	var dia = value.dayOfMonth;
        var mes = value.monthValue;
        var anio = value.year; 

        resultado = dia + '/' + mes + '/' + anio;
    }
    
    return resultado;
}

// Don't move
function formateadorTipoUsuario(value, row, index) {
    var resultado = '-';
        
    if (value != null) {
    	switch(value) {
    	case 'A':
    		resultado = 'Administrador';
    		break;
    	
    	case 'S':
    		resultado = 'Supervisor';
    		break
    	
    	case 'V':
    		resultado = 'Vendedor';
    		break;
    	}
    }
    
    return resultado;
}




































/*
function action() {
	$.ajax({
		type: 'GET',
		dataType: 'json',
		url: 'prueba',
		success: function(data) {
			$('#encabezado').html(data);
		}
	});
}*/

