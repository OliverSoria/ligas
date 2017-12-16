<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
	<tiles:insertAttribute name="styles" />
	<tiles:insertAttribute name="meta" />
</head>
<body ng-app="SistemaGestionApp">
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="modal-info" />
	<tiles:insertAttribute name="modal-formulario" />
	<tiles:insertAttribute name="scripts" />
</body>
</html>