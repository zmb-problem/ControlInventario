
<%@ page import="controlinventario.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.codigoBarras}">
				<li class="fieldcontain">
					<span id="codigoBarras-label" class="property-label"><g:message code="producto.codigoBarras.label" default="Codigo Barras" /></span>
					
						<span class="property-value" aria-labelledby="codigoBarras-label"><g:fieldValue bean="${productoInstance}" field="codigoBarras"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="producto.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${productoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="producto.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${productoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.tipoBulto}">
				<li class="fieldcontain">
					<span id="tipoBulto-label" class="property-label"><g:message code="producto.tipoBulto.label" default="Tipo Bulto" /></span>
					
						<span class="property-value" aria-labelledby="tipoBulto-label"><g:link controller="tipoBulto" action="show" id="${productoInstance?.tipoBulto?.id}">${productoInstance?.tipoBulto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.fechaAlta}">
				<li class="fieldcontain">
					<span id="fechaAlta-label" class="property-label"><g:message code="producto.fechaAlta.label" default="Fecha Alta" /></span>
					
						<span class="property-value" aria-labelledby="fechaAlta-label"><g:formatDate date="${productoInstance?.fechaAlta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.stockMinimo}">
				<li class="fieldcontain">
					<span id="stockMinimo-label" class="property-label"><g:message code="producto.stockMinimo.label" default="Stock Minimo" /></span>
					
						<span class="property-value" aria-labelledby="stockMinimo-label"><g:fieldValue bean="${productoInstance}" field="stockMinimo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.stockMaximo}">
				<li class="fieldcontain">
					<span id="stockMaximo-label" class="property-label"><g:message code="producto.stockMaximo.label" default="Stock Maximo" /></span>
					
						<span class="property-value" aria-labelledby="stockMaximo-label"><g:fieldValue bean="${productoInstance}" field="stockMaximo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.fechaActualizacion}">
				<li class="fieldcontain">
					<span id="fechaActualizacion-label" class="property-label"><g:message code="producto.fechaActualizacion.label" default="Fecha Actualizacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaActualizacion-label"><g:formatDate date="${productoInstance?.fechaActualizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.fotoProducto}">
				<li class="fieldcontain">
					<span id="fotoProducto-label" class="property-label"><g:message code="producto.fotoProducto.label" default="Foto Producto" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="producto.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${productoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
