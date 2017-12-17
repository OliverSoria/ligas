<div id="modal-formulario" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" ng-controller="alta_usuario">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Agregar nuevo usuario</h4>
      </div>
      <div class="modal-body">
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Usuario:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<input type="text" ng-model="usuario.alias" ng-focus="onFocusUsuario()" class="form-control" style="margin-bottom:15px;">
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Nombre:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<input type="text" ng-model="usuario.nombre" class="form-control" style="margin-bottom:15px;">
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Apellido Paterno:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<input type="text" ng-model="usuario.paterno" class="form-control" style="margin-bottom:15px;">
        	</div>
        </div>
      	<div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Apellido Materno:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<input type="text" ng-model="usuario.materno" class="form-control" style="margin-bottom:15px;">
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Contraseña:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<input type="password" ng-model="usuario.password" class="form-control" style="margin-bottom:15px;">
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Confirmar contraseña:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<input type="password" class="form-control" style="margin-bottom:15px;">
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Tipo de Usuario:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<!-- <input type="text" ng-model="usuario.tipo" class="form-control"> -->
        		<div class="form-group">
        			<select class="selectpicker form-control" ng-model="usuario.tipo">
	  					<option>Vendedor</option>
	  					<option>Supervisor</option>
	  					<option>Administrador</option>
					</select>
        		</div>
        		
        		
        	</div>
        </div>
        <div class="row">
	        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	        	<div class="form-group">
	        		<div class="alert alert-info alert-info-modal text-center">
	 					Favor de capturar la información
					</div>
	        	</div>
	        </div>	
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" ng-click="onAltaUsuarioAceptar(usuario)">Aceptar</button>
        <button type="button" class="btn btn-danger" ng-click="onAltaUsuarioCancelar()">Cancelar</button>
      </div>
    </div>
  </div>
</div>