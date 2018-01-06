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
        	<div ng-class="colorUserUsuarioClasses">
        		<input type="text" 
        		       ng-model="usuario.alias" 
        		       ng-focus="onFocusUsuario()" 
        		       ng-keyup="onKeyUpUsuario()" 
        		       class="form-control" 
        		       style="margin-bottom:15px;">
        		       <span ng-class="iconsUserUsuarioClasses"></span>
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Nombre(s):</span>
        	<div ng-class="colorUserNombreClasses">
        		<input type="text" 
        		       ng-model="usuario.nombre"
        		       ng-focus="onFocusNombre()"
        		       ng-keyup="onKeyUpNombre()"
        		       class="form-control" 
        		       style="margin-bottom:15px;">
        		       <span ng-class="iconsUserNombreClasses"></span>
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Apellido Paterno:</span>
        	<div ng-class="colorUserPaternoClasses">
        		<input type="text" 
        		       ng-model="usuario.paterno"
        		       ng-focus="onFocusPaterno()" 
        		       ng-keyup="onKeyUpPaterno()"
        		       class="form-control" 
        		       style="margin-bottom:15px;">
        		       <span ng-class="iconsUserPaternoClasses"></span>
        	</div>
        </div>
      	<div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Apellido Materno:</span>
        	<div ng-class="colorUserMaternoClasses">
        		<input type="text" 
        		       ng-model="usuario.materno" 
        		       ng-focus="onFocusMaterno()"
        		       ng-keyup="onKeyUpMaterno()"
        		       class="form-control" 
        		       style="margin-bottom:15px;">
        		       <span ng-class="iconsUserMaternoClasses"></span>
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Contraseña:</span>
        	<div ng-class="colorUserPasswordClasses">
        		<input type="password" 
        		       ng-model="usuario.password"
        		       ng-focus="onFocusPassword()"
        		       ng-keyup="onKeyUpPassword()"
        		       class="form-control" 
        		       style="margin-bottom:15px;">
        		       <span ng-class="iconsUserPasswordClasses"></span>
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Confirmar contraseña:</span>
        	<div ng-class="colorUserConfirmaPasswordClasses">
        		<input type="password" 
        		       ng-model="confirmPwd"
        		       ng-focus="onFocusConfirmar()"
        		       ng-keyup="onKeyUpConfirmaPassword()"
        		       class="form-control" 
        		       style="margin-bottom:15px;">
        		       <span ng-class="iconsUserConfirmaPasswordClasses"></span>
        	</div>
        </div>
        <div class="row">
        	<span class="text-right col-xs-12 col-sm-6 col-md-6">Tipo de Usuario:</span>
        	<div class="col-xs-12 col-sm-6 col-md-6">
        		<!-- <input type="text" ng-model="usuario.tipo" class="form-control"> -->
        		<div class="form-group" ng-click="onFocusTipo()">
        			<select class="selectpicker form-control">
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
	        		<div ng-class="alertUserClasses">
	        			{{textAltaUsuario}}
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